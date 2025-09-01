# frozen_string_literal: true

# This is generated code!

module Aws::Pinpoint
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ADMChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ADMChannelRequest', name: 'ADMChannelRequest')
    ADMChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ADMChannelResponse', name: 'ADMChannelResponse')
    ADMMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ADMMessage', name: 'ADMMessage')
    APNSChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSChannelRequest', name: 'APNSChannelRequest')
    APNSChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSChannelResponse', name: 'APNSChannelResponse')
    APNSMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSMessage', name: 'APNSMessage')
    APNSPushNotificationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSPushNotificationTemplate', name: 'APNSPushNotificationTemplate')
    APNSSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSSandboxChannelRequest', name: 'APNSSandboxChannelRequest')
    APNSSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSSandboxChannelResponse', name: 'APNSSandboxChannelResponse')
    APNSVoipChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipChannelRequest', name: 'APNSVoipChannelRequest')
    APNSVoipChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipChannelResponse', name: 'APNSVoipChannelResponse')
    APNSVoipSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipSandboxChannelRequest', name: 'APNSVoipSandboxChannelRequest')
    APNSVoipSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#APNSVoipSandboxChannelResponse', name: 'APNSVoipSandboxChannelResponse')
    Action = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Action', name: 'Action')
    ActivitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ActivitiesResponse', name: 'ActivitiesResponse')
    Activity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Activity', name: 'Activity')
    ActivityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ActivityResponse', name: 'ActivityResponse')
    AddressConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AddressConfiguration', name: 'AddressConfiguration')
    Alignment = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Alignment', name: 'Alignment')
    AndroidPushNotificationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AndroidPushNotificationTemplate', name: 'AndroidPushNotificationTemplate')
    ApplicationDateRangeKpiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationDateRangeKpiResponse', name: 'ApplicationDateRangeKpiResponse')
    ApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationResponse', name: 'ApplicationResponse')
    ApplicationSettingsJourneyLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationSettingsJourneyLimits', name: 'ApplicationSettingsJourneyLimits')
    ApplicationSettingsResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationSettingsResource', name: 'ApplicationSettingsResource')
    ApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ApplicationsResponse', name: 'ApplicationsResponse')
    AttributeDimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AttributeDimension', name: 'AttributeDimension')
    AttributeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#AttributeType', name: 'AttributeType')
    AttributesResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#AttributesResource', name: 'AttributesResource')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BaiduChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaiduChannelRequest', name: 'BaiduChannelRequest')
    BaiduChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaiduChannelResponse', name: 'BaiduChannelResponse')
    BaiduMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaiduMessage', name: 'BaiduMessage')
    BaseKpiResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#BaseKpiResult', name: 'BaseKpiResult')
    ButtonAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#ButtonAction', name: 'ButtonAction')
    CampaignCustomMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignCustomMessage', name: 'CampaignCustomMessage')
    CampaignDateRangeKpiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignDateRangeKpiResponse', name: 'CampaignDateRangeKpiResponse')
    CampaignEmailMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignEmailMessage', name: 'CampaignEmailMessage')
    CampaignEventFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignEventFilter', name: 'CampaignEventFilter')
    CampaignHook = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignHook', name: 'CampaignHook')
    CampaignInAppMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignInAppMessage', name: 'CampaignInAppMessage')
    CampaignLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignLimits', name: 'CampaignLimits')
    CampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignResponse', name: 'CampaignResponse')
    CampaignSmsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignSmsMessage', name: 'CampaignSmsMessage')
    CampaignState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignState', name: 'CampaignState')
    CampaignStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#CampaignStatus', name: 'CampaignStatus')
    CampaignsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CampaignsResponse', name: 'CampaignsResponse')
    ChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ChannelResponse', name: 'ChannelResponse')
    ChannelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#ChannelType', name: 'ChannelType')
    ChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ChannelsResponse', name: 'ChannelsResponse')
    ClosedDays = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ClosedDays', name: 'ClosedDays')
    ClosedDaysRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ClosedDaysRule', name: 'ClosedDaysRule')
    Condition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Condition', name: 'Condition')
    ConditionalSplitActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ConditionalSplitActivity', name: 'ConditionalSplitActivity')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactCenterActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ContactCenterActivity', name: 'ContactCenterActivity')
    CreateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateAppRequest', name: 'CreateAppRequest')
    CreateAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateAppResponse', name: 'CreateAppResponse')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateCampaignRequest', name: 'CreateCampaignRequest')
    CreateCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateCampaignResponse', name: 'CreateCampaignResponse')
    CreateEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateEmailTemplateRequest', name: 'CreateEmailTemplateRequest')
    CreateEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateEmailTemplateResponse', name: 'CreateEmailTemplateResponse')
    CreateExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateExportJobRequest', name: 'CreateExportJobRequest')
    CreateExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateExportJobResponse', name: 'CreateExportJobResponse')
    CreateImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateImportJobRequest', name: 'CreateImportJobRequest')
    CreateImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateImportJobResponse', name: 'CreateImportJobResponse')
    CreateInAppTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateInAppTemplateRequest', name: 'CreateInAppTemplateRequest')
    CreateInAppTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateInAppTemplateResponse', name: 'CreateInAppTemplateResponse')
    CreateJourneyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateJourneyRequest', name: 'CreateJourneyRequest')
    CreateJourneyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateJourneyResponse', name: 'CreateJourneyResponse')
    CreatePushTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreatePushTemplateRequest', name: 'CreatePushTemplateRequest')
    CreatePushTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreatePushTemplateResponse', name: 'CreatePushTemplateResponse')
    CreateRecommenderConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateRecommenderConfigurationRequest', name: 'CreateRecommenderConfigurationRequest')
    CreateRecommenderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateRecommenderConfigurationResponse', name: 'CreateRecommenderConfigurationResponse')
    CreateRecommenderConfigurationShape = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateRecommenderConfigurationShape', name: 'CreateRecommenderConfigurationShape')
    CreateSegmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSegmentRequest', name: 'CreateSegmentRequest')
    CreateSegmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSegmentResponse', name: 'CreateSegmentResponse')
    CreateSmsTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSmsTemplateRequest', name: 'CreateSmsTemplateRequest')
    CreateSmsTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateSmsTemplateResponse', name: 'CreateSmsTemplateResponse')
    CreateTemplateMessageBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateTemplateMessageBody', name: 'CreateTemplateMessageBody')
    CreateVoiceTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateVoiceTemplateRequest', name: 'CreateVoiceTemplateRequest')
    CreateVoiceTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CreateVoiceTemplateResponse', name: 'CreateVoiceTemplateResponse')
    CustomDeliveryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CustomDeliveryConfiguration', name: 'CustomDeliveryConfiguration')
    CustomMessageActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#CustomMessageActivity', name: 'CustomMessageActivity')
    DayOfWeek = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#DayOfWeek', name: 'DayOfWeek')
    DefaultButtonConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultButtonConfiguration', name: 'DefaultButtonConfiguration')
    DefaultMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultMessage', name: 'DefaultMessage')
    DefaultPushNotificationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultPushNotificationMessage', name: 'DefaultPushNotificationMessage')
    DefaultPushNotificationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DefaultPushNotificationTemplate', name: 'DefaultPushNotificationTemplate')
    DeleteAdmChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAdmChannelRequest', name: 'DeleteAdmChannelRequest')
    DeleteAdmChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAdmChannelResponse', name: 'DeleteAdmChannelResponse')
    DeleteApnsChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsChannelRequest', name: 'DeleteApnsChannelRequest')
    DeleteApnsChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsChannelResponse', name: 'DeleteApnsChannelResponse')
    DeleteApnsSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsSandboxChannelRequest', name: 'DeleteApnsSandboxChannelRequest')
    DeleteApnsSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsSandboxChannelResponse', name: 'DeleteApnsSandboxChannelResponse')
    DeleteApnsVoipChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipChannelRequest', name: 'DeleteApnsVoipChannelRequest')
    DeleteApnsVoipChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipChannelResponse', name: 'DeleteApnsVoipChannelResponse')
    DeleteApnsVoipSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipSandboxChannelRequest', name: 'DeleteApnsVoipSandboxChannelRequest')
    DeleteApnsVoipSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteApnsVoipSandboxChannelResponse', name: 'DeleteApnsVoipSandboxChannelResponse')
    DeleteAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAppRequest', name: 'DeleteAppRequest')
    DeleteAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteAppResponse', name: 'DeleteAppResponse')
    DeleteBaiduChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteBaiduChannelRequest', name: 'DeleteBaiduChannelRequest')
    DeleteBaiduChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteBaiduChannelResponse', name: 'DeleteBaiduChannelResponse')
    DeleteCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteCampaignRequest', name: 'DeleteCampaignRequest')
    DeleteCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteCampaignResponse', name: 'DeleteCampaignResponse')
    DeleteEmailChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailChannelRequest', name: 'DeleteEmailChannelRequest')
    DeleteEmailChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailChannelResponse', name: 'DeleteEmailChannelResponse')
    DeleteEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailTemplateRequest', name: 'DeleteEmailTemplateRequest')
    DeleteEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEmailTemplateResponse', name: 'DeleteEmailTemplateResponse')
    DeleteEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEndpointRequest', name: 'DeleteEndpointRequest')
    DeleteEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEndpointResponse', name: 'DeleteEndpointResponse')
    DeleteEventStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEventStreamRequest', name: 'DeleteEventStreamRequest')
    DeleteEventStreamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteEventStreamResponse', name: 'DeleteEventStreamResponse')
    DeleteGcmChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteGcmChannelRequest', name: 'DeleteGcmChannelRequest')
    DeleteGcmChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteGcmChannelResponse', name: 'DeleteGcmChannelResponse')
    DeleteInAppTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteInAppTemplateRequest', name: 'DeleteInAppTemplateRequest')
    DeleteInAppTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteInAppTemplateResponse', name: 'DeleteInAppTemplateResponse')
    DeleteJourneyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteJourneyRequest', name: 'DeleteJourneyRequest')
    DeleteJourneyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteJourneyResponse', name: 'DeleteJourneyResponse')
    DeletePushTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeletePushTemplateRequest', name: 'DeletePushTemplateRequest')
    DeletePushTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeletePushTemplateResponse', name: 'DeletePushTemplateResponse')
    DeleteRecommenderConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteRecommenderConfigurationRequest', name: 'DeleteRecommenderConfigurationRequest')
    DeleteRecommenderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteRecommenderConfigurationResponse', name: 'DeleteRecommenderConfigurationResponse')
    DeleteSegmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSegmentRequest', name: 'DeleteSegmentRequest')
    DeleteSegmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSegmentResponse', name: 'DeleteSegmentResponse')
    DeleteSmsChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsChannelRequest', name: 'DeleteSmsChannelRequest')
    DeleteSmsChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsChannelResponse', name: 'DeleteSmsChannelResponse')
    DeleteSmsTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsTemplateRequest', name: 'DeleteSmsTemplateRequest')
    DeleteSmsTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteSmsTemplateResponse', name: 'DeleteSmsTemplateResponse')
    DeleteUserEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteUserEndpointsRequest', name: 'DeleteUserEndpointsRequest')
    DeleteUserEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteUserEndpointsResponse', name: 'DeleteUserEndpointsResponse')
    DeleteVoiceChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceChannelRequest', name: 'DeleteVoiceChannelRequest')
    DeleteVoiceChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceChannelResponse', name: 'DeleteVoiceChannelResponse')
    DeleteVoiceTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceTemplateRequest', name: 'DeleteVoiceTemplateRequest')
    DeleteVoiceTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DeleteVoiceTemplateResponse', name: 'DeleteVoiceTemplateResponse')
    DeliveryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#DeliveryStatus', name: 'DeliveryStatus')
    DimensionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#DimensionType', name: 'DimensionType')
    DirectMessageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#DirectMessageConfiguration', name: 'DirectMessageConfiguration')
    Duration = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Duration', name: 'Duration')
    EmailChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailChannelRequest', name: 'EmailChannelRequest')
    EmailChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailChannelResponse', name: 'EmailChannelResponse')
    EmailMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailMessage', name: 'EmailMessage')
    EmailMessageActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailMessageActivity', name: 'EmailMessageActivity')
    EmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailTemplateRequest', name: 'EmailTemplateRequest')
    EmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EmailTemplateResponse', name: 'EmailTemplateResponse')
    EndpointBatchItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointBatchItem', name: 'EndpointBatchItem')
    EndpointBatchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointBatchRequest', name: 'EndpointBatchRequest')
    EndpointDemographic = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointDemographic', name: 'EndpointDemographic')
    EndpointItemResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointItemResponse', name: 'EndpointItemResponse')
    EndpointLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointLocation', name: 'EndpointLocation')
    EndpointMessageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointMessageResult', name: 'EndpointMessageResult')
    EndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointRequest', name: 'EndpointRequest')
    EndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointResponse', name: 'EndpointResponse')
    EndpointSendConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointSendConfiguration', name: 'EndpointSendConfiguration')
    EndpointUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointUser', name: 'EndpointUser')
    EndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EndpointsResponse', name: 'EndpointsResponse')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Event', name: 'Event')
    EventCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventCondition', name: 'EventCondition')
    EventDimensions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventDimensions', name: 'EventDimensions')
    EventFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventFilter', name: 'EventFilter')
    EventItemResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventItemResponse', name: 'EventItemResponse')
    EventStartCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventStartCondition', name: 'EventStartCondition')
    EventStream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventStream', name: 'EventStream')
    EventsBatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventsBatch', name: 'EventsBatch')
    EventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventsRequest', name: 'EventsRequest')
    EventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#EventsResponse', name: 'EventsResponse')
    ExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobRequest', name: 'ExportJobRequest')
    ExportJobResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobResource', name: 'ExportJobResource')
    ExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobResponse', name: 'ExportJobResponse')
    ExportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ExportJobsResponse', name: 'ExportJobsResponse')
    FilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#FilterType', name: 'FilterType')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Format = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Format', name: 'Format')
    Frequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Frequency', name: 'Frequency')
    GCMChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GCMChannelRequest', name: 'GCMChannelRequest')
    GCMChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GCMChannelResponse', name: 'GCMChannelResponse')
    GCMMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GCMMessage', name: 'GCMMessage')
    GPSCoordinates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GPSCoordinates', name: 'GPSCoordinates')
    GPSPointDimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GPSPointDimension', name: 'GPSPointDimension')
    GetAdmChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAdmChannelRequest', name: 'GetAdmChannelRequest')
    GetAdmChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAdmChannelResponse', name: 'GetAdmChannelResponse')
    GetApnsChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsChannelRequest', name: 'GetApnsChannelRequest')
    GetApnsChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsChannelResponse', name: 'GetApnsChannelResponse')
    GetApnsSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsSandboxChannelRequest', name: 'GetApnsSandboxChannelRequest')
    GetApnsSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsSandboxChannelResponse', name: 'GetApnsSandboxChannelResponse')
    GetApnsVoipChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipChannelRequest', name: 'GetApnsVoipChannelRequest')
    GetApnsVoipChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipChannelResponse', name: 'GetApnsVoipChannelResponse')
    GetApnsVoipSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipSandboxChannelRequest', name: 'GetApnsVoipSandboxChannelRequest')
    GetApnsVoipSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApnsVoipSandboxChannelResponse', name: 'GetApnsVoipSandboxChannelResponse')
    GetAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppRequest', name: 'GetAppRequest')
    GetAppResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppResponse', name: 'GetAppResponse')
    GetApplicationDateRangeKpiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationDateRangeKpiRequest', name: 'GetApplicationDateRangeKpiRequest')
    GetApplicationDateRangeKpiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationDateRangeKpiResponse', name: 'GetApplicationDateRangeKpiResponse')
    GetApplicationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationSettingsRequest', name: 'GetApplicationSettingsRequest')
    GetApplicationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetApplicationSettingsResponse', name: 'GetApplicationSettingsResponse')
    GetAppsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppsRequest', name: 'GetAppsRequest')
    GetAppsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetAppsResponse', name: 'GetAppsResponse')
    GetBaiduChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetBaiduChannelRequest', name: 'GetBaiduChannelRequest')
    GetBaiduChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetBaiduChannelResponse', name: 'GetBaiduChannelResponse')
    GetCampaignActivitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignActivitiesRequest', name: 'GetCampaignActivitiesRequest')
    GetCampaignActivitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignActivitiesResponse', name: 'GetCampaignActivitiesResponse')
    GetCampaignDateRangeKpiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignDateRangeKpiRequest', name: 'GetCampaignDateRangeKpiRequest')
    GetCampaignDateRangeKpiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignDateRangeKpiResponse', name: 'GetCampaignDateRangeKpiResponse')
    GetCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignRequest', name: 'GetCampaignRequest')
    GetCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignResponse', name: 'GetCampaignResponse')
    GetCampaignVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionRequest', name: 'GetCampaignVersionRequest')
    GetCampaignVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionResponse', name: 'GetCampaignVersionResponse')
    GetCampaignVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionsRequest', name: 'GetCampaignVersionsRequest')
    GetCampaignVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignVersionsResponse', name: 'GetCampaignVersionsResponse')
    GetCampaignsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignsRequest', name: 'GetCampaignsRequest')
    GetCampaignsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetCampaignsResponse', name: 'GetCampaignsResponse')
    GetChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetChannelsRequest', name: 'GetChannelsRequest')
    GetChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetChannelsResponse', name: 'GetChannelsResponse')
    GetEmailChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailChannelRequest', name: 'GetEmailChannelRequest')
    GetEmailChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailChannelResponse', name: 'GetEmailChannelResponse')
    GetEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailTemplateRequest', name: 'GetEmailTemplateRequest')
    GetEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEmailTemplateResponse', name: 'GetEmailTemplateResponse')
    GetEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEndpointRequest', name: 'GetEndpointRequest')
    GetEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEndpointResponse', name: 'GetEndpointResponse')
    GetEventStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEventStreamRequest', name: 'GetEventStreamRequest')
    GetEventStreamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetEventStreamResponse', name: 'GetEventStreamResponse')
    GetExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobRequest', name: 'GetExportJobRequest')
    GetExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobResponse', name: 'GetExportJobResponse')
    GetExportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobsRequest', name: 'GetExportJobsRequest')
    GetExportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetExportJobsResponse', name: 'GetExportJobsResponse')
    GetGcmChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetGcmChannelRequest', name: 'GetGcmChannelRequest')
    GetGcmChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetGcmChannelResponse', name: 'GetGcmChannelResponse')
    GetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobRequest', name: 'GetImportJobRequest')
    GetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobResponse', name: 'GetImportJobResponse')
    GetImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobsRequest', name: 'GetImportJobsRequest')
    GetImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetImportJobsResponse', name: 'GetImportJobsResponse')
    GetInAppMessagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppMessagesRequest', name: 'GetInAppMessagesRequest')
    GetInAppMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppMessagesResponse', name: 'GetInAppMessagesResponse')
    GetInAppTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppTemplateRequest', name: 'GetInAppTemplateRequest')
    GetInAppTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetInAppTemplateResponse', name: 'GetInAppTemplateResponse')
    GetJourneyDateRangeKpiRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyDateRangeKpiRequest', name: 'GetJourneyDateRangeKpiRequest')
    GetJourneyDateRangeKpiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyDateRangeKpiResponse', name: 'GetJourneyDateRangeKpiResponse')
    GetJourneyExecutionActivityMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionActivityMetricsRequest', name: 'GetJourneyExecutionActivityMetricsRequest')
    GetJourneyExecutionActivityMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionActivityMetricsResponse', name: 'GetJourneyExecutionActivityMetricsResponse')
    GetJourneyExecutionMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionMetricsRequest', name: 'GetJourneyExecutionMetricsRequest')
    GetJourneyExecutionMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyExecutionMetricsResponse', name: 'GetJourneyExecutionMetricsResponse')
    GetJourneyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRequest', name: 'GetJourneyRequest')
    GetJourneyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyResponse', name: 'GetJourneyResponse')
    GetJourneyRunExecutionActivityMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionActivityMetricsRequest', name: 'GetJourneyRunExecutionActivityMetricsRequest')
    GetJourneyRunExecutionActivityMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionActivityMetricsResponse', name: 'GetJourneyRunExecutionActivityMetricsResponse')
    GetJourneyRunExecutionMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionMetricsRequest', name: 'GetJourneyRunExecutionMetricsRequest')
    GetJourneyRunExecutionMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunExecutionMetricsResponse', name: 'GetJourneyRunExecutionMetricsResponse')
    GetJourneyRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunsRequest', name: 'GetJourneyRunsRequest')
    GetJourneyRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetJourneyRunsResponse', name: 'GetJourneyRunsResponse')
    GetPushTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetPushTemplateRequest', name: 'GetPushTemplateRequest')
    GetPushTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetPushTemplateResponse', name: 'GetPushTemplateResponse')
    GetRecommenderConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationRequest', name: 'GetRecommenderConfigurationRequest')
    GetRecommenderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationResponse', name: 'GetRecommenderConfigurationResponse')
    GetRecommenderConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationsRequest', name: 'GetRecommenderConfigurationsRequest')
    GetRecommenderConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetRecommenderConfigurationsResponse', name: 'GetRecommenderConfigurationsResponse')
    GetSegmentExportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentExportJobsRequest', name: 'GetSegmentExportJobsRequest')
    GetSegmentExportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentExportJobsResponse', name: 'GetSegmentExportJobsResponse')
    GetSegmentImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentImportJobsRequest', name: 'GetSegmentImportJobsRequest')
    GetSegmentImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentImportJobsResponse', name: 'GetSegmentImportJobsResponse')
    GetSegmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentRequest', name: 'GetSegmentRequest')
    GetSegmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentResponse', name: 'GetSegmentResponse')
    GetSegmentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionRequest', name: 'GetSegmentVersionRequest')
    GetSegmentVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionResponse', name: 'GetSegmentVersionResponse')
    GetSegmentVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionsRequest', name: 'GetSegmentVersionsRequest')
    GetSegmentVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentVersionsResponse', name: 'GetSegmentVersionsResponse')
    GetSegmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentsRequest', name: 'GetSegmentsRequest')
    GetSegmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSegmentsResponse', name: 'GetSegmentsResponse')
    GetSmsChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsChannelRequest', name: 'GetSmsChannelRequest')
    GetSmsChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsChannelResponse', name: 'GetSmsChannelResponse')
    GetSmsTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsTemplateRequest', name: 'GetSmsTemplateRequest')
    GetSmsTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetSmsTemplateResponse', name: 'GetSmsTemplateResponse')
    GetUserEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetUserEndpointsRequest', name: 'GetUserEndpointsRequest')
    GetUserEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetUserEndpointsResponse', name: 'GetUserEndpointsResponse')
    GetVoiceChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceChannelRequest', name: 'GetVoiceChannelRequest')
    GetVoiceChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceChannelResponse', name: 'GetVoiceChannelResponse')
    GetVoiceTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceTemplateRequest', name: 'GetVoiceTemplateRequest')
    GetVoiceTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#GetVoiceTemplateResponse', name: 'GetVoiceTemplateResponse')
    HoldoutActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#HoldoutActivity', name: 'HoldoutActivity')
    ImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobRequest', name: 'ImportJobRequest')
    ImportJobResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobResource', name: 'ImportJobResource')
    ImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobResponse', name: 'ImportJobResponse')
    ImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ImportJobsResponse', name: 'ImportJobsResponse')
    InAppCampaignSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppCampaignSchedule', name: 'InAppCampaignSchedule')
    InAppMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessage', name: 'InAppMessage')
    InAppMessageBodyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageBodyConfig', name: 'InAppMessageBodyConfig')
    InAppMessageButton = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageButton', name: 'InAppMessageButton')
    InAppMessageCampaign = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageCampaign', name: 'InAppMessageCampaign')
    InAppMessageContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageContent', name: 'InAppMessageContent')
    InAppMessageHeaderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessageHeaderConfig', name: 'InAppMessageHeaderConfig')
    InAppMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppMessagesResponse', name: 'InAppMessagesResponse')
    InAppTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppTemplateRequest', name: 'InAppTemplateRequest')
    InAppTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InAppTemplateResponse', name: 'InAppTemplateResponse')
    Include = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Include', name: 'Include')
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ItemResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ItemResponse', name: 'ItemResponse')
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#JobStatus', name: 'JobStatus')
    JourneyChannelSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyChannelSettings', name: 'JourneyChannelSettings')
    JourneyCustomMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyCustomMessage', name: 'JourneyCustomMessage')
    JourneyDateRangeKpiResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyDateRangeKpiResponse', name: 'JourneyDateRangeKpiResponse')
    JourneyEmailMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyEmailMessage', name: 'JourneyEmailMessage')
    JourneyExecutionActivityMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyExecutionActivityMetricsResponse', name: 'JourneyExecutionActivityMetricsResponse')
    JourneyExecutionMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyExecutionMetricsResponse', name: 'JourneyExecutionMetricsResponse')
    JourneyLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyLimits', name: 'JourneyLimits')
    JourneyPushMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyPushMessage', name: 'JourneyPushMessage')
    JourneyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyResponse', name: 'JourneyResponse')
    JourneyRunExecutionActivityMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunExecutionActivityMetricsResponse', name: 'JourneyRunExecutionActivityMetricsResponse')
    JourneyRunExecutionMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunExecutionMetricsResponse', name: 'JourneyRunExecutionMetricsResponse')
    JourneyRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunResponse', name: 'JourneyRunResponse')
    JourneyRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#JourneyRunStatus', name: 'JourneyRunStatus')
    JourneyRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyRunsResponse', name: 'JourneyRunsResponse')
    JourneySMSMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneySMSMessage', name: 'JourneySMSMessage')
    JourneySchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneySchedule', name: 'JourneySchedule')
    JourneyStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyStateRequest', name: 'JourneyStateRequest')
    JourneyTimeframeCap = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneyTimeframeCap', name: 'JourneyTimeframeCap')
    JourneysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#JourneysResponse', name: 'JourneysResponse')
    Layout = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Layout', name: 'Layout')
    ListJourneysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListJourneysRequest', name: 'ListJourneysRequest')
    ListJourneysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListJourneysResponse', name: 'ListJourneysResponse')
    ListOfActivityResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfActivityResponse', name: 'ListOfActivityResponse')
    ListOfApplicationResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfApplicationResponse', name: 'ListOfApplicationResponse')
    ListOfCampaignResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfCampaignResponse', name: 'ListOfCampaignResponse')
    ListOfClosedDaysRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfClosedDaysRules', name: 'ListOfClosedDaysRules')
    ListOfEndpointBatchItem = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfEndpointBatchItem', name: 'ListOfEndpointBatchItem')
    ListOfEndpointResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfEndpointResponse', name: 'ListOfEndpointResponse')
    ListOfExportJobResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfExportJobResponse', name: 'ListOfExportJobResponse')
    ListOfImportJobResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfImportJobResponse', name: 'ListOfImportJobResponse')
    ListOfInAppMessageCampaign = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfInAppMessageCampaign', name: 'ListOfInAppMessageCampaign')
    ListOfInAppMessageContent = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfInAppMessageContent', name: 'ListOfInAppMessageContent')
    ListOfJourneyResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfJourneyResponse', name: 'ListOfJourneyResponse')
    ListOfJourneyRunResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfJourneyRunResponse', name: 'ListOfJourneyRunResponse')
    ListOfMessageHeader = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfMessageHeader', name: 'ListOfMessageHeader')
    ListOfMultiConditionalBranch = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfMultiConditionalBranch', name: 'ListOfMultiConditionalBranch')
    ListOfOpenHoursRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfOpenHoursRules', name: 'ListOfOpenHoursRules')
    ListOfRandomSplitEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfRandomSplitEntry', name: 'ListOfRandomSplitEntry')
    ListOfRecommenderConfigurationResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfRecommenderConfigurationResponse', name: 'ListOfRecommenderConfigurationResponse')
    ListOfResultRow = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfResultRow', name: 'ListOfResultRow')
    ListOfResultRowValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfResultRowValue', name: 'ListOfResultRowValue')
    ListOfSegmentDimensions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentDimensions', name: 'ListOfSegmentDimensions')
    ListOfSegmentGroup = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentGroup', name: 'ListOfSegmentGroup')
    ListOfSegmentReference = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentReference', name: 'ListOfSegmentReference')
    ListOfSegmentResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSegmentResponse', name: 'ListOfSegmentResponse')
    ListOfSimpleCondition = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfSimpleCondition', name: 'ListOfSimpleCondition')
    ListOfTemplateResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfTemplateResponse', name: 'ListOfTemplateResponse')
    ListOfTemplateVersionResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfTemplateVersionResponse', name: 'ListOfTemplateVersionResponse')
    ListOfTreatmentResource = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfTreatmentResource', name: 'ListOfTreatmentResource')
    ListOfWriteTreatmentResource = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOfWriteTreatmentResource', name: 'ListOfWriteTreatmentResource')
    ListOfEndpointtypeselement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOf__EndpointTypesElement', name: 'ListOfEndpointtypeselement')
    ListOfTimezoneestimationmethodselement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOf__TimezoneEstimationMethodsElement', name: 'ListOfTimezoneestimationmethodselement')
    ListOfString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpoint#ListOf__string', name: 'ListOfString')
    ListRecommenderConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListRecommenderConfigurationsResponse', name: 'ListRecommenderConfigurationsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTemplateVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplateVersionsRequest', name: 'ListTemplateVersionsRequest')
    ListTemplateVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplateVersionsResponse', name: 'ListTemplateVersionsResponse')
    ListTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplatesRequest', name: 'ListTemplatesRequest')
    ListTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ListTemplatesResponse', name: 'ListTemplatesResponse')
    MapOfActivity = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfActivity', name: 'MapOfActivity')
    MapOfAddressConfiguration = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfAddressConfiguration', name: 'MapOfAddressConfiguration')
    MapOfAttributeDimension = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfAttributeDimension', name: 'MapOfAttributeDimension')
    MapOfChannelResponse = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfChannelResponse', name: 'MapOfChannelResponse')
    MapOfEndpointMessageResult = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEndpointMessageResult', name: 'MapOfEndpointMessageResult')
    MapOfEndpointSendConfiguration = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEndpointSendConfiguration', name: 'MapOfEndpointSendConfiguration')
    MapOfEvent = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEvent', name: 'MapOfEvent')
    MapOfEventItemResponse = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEventItemResponse', name: 'MapOfEventItemResponse')
    MapOfEventsBatch = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfEventsBatch', name: 'MapOfEventsBatch')
    MapOfItemResponse = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfItemResponse', name: 'MapOfItemResponse')
    MapOfListOfOpenHoursRules = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfListOfOpenHoursRules', name: 'MapOfListOfOpenHoursRules')
    MapOfListOfString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfListOf__string', name: 'MapOfListOfString')
    MapOfMapOfEndpointMessageResult = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfMapOfEndpointMessageResult', name: 'MapOfMapOfEndpointMessageResult')
    MapOfMessageResult = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfMessageResult', name: 'MapOfMessageResult')
    MapOfMetricDimension = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOfMetricDimension', name: 'MapOfMetricDimension')
    MapOfDouble = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOf__double', name: 'MapOfDouble')
    MapOfInteger = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOf__integer', name: 'MapOfInteger')
    MapOfString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpoint#MapOf__string', name: 'MapOfString')
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Message', name: 'Message')
    MessageBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageBody', name: 'MessageBody')
    MessageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageConfiguration', name: 'MessageConfiguration')
    MessageHeader = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageHeader', name: 'MessageHeader')
    MessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageRequest', name: 'MessageRequest')
    MessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageResponse', name: 'MessageResponse')
    MessageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MessageResult', name: 'MessageResult')
    MessageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#MessageType', name: 'MessageType')
    MethodNotAllowedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MethodNotAllowedException', name: 'MethodNotAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    MetricDimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MetricDimension', name: 'MetricDimension')
    Mode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Mode', name: 'Mode')
    MultiConditionalBranch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MultiConditionalBranch', name: 'MultiConditionalBranch')
    MultiConditionalSplitActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#MultiConditionalSplitActivity', name: 'MultiConditionalSplitActivity')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NumberValidateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#NumberValidateRequest', name: 'NumberValidateRequest')
    NumberValidateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#NumberValidateResponse', name: 'NumberValidateResponse')
    OpenHours = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#OpenHours', name: 'OpenHours')
    OpenHoursRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#OpenHoursRule', name: 'OpenHoursRule')
    Operator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Operator', name: 'Operator')
    OverrideButtonConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#OverrideButtonConfiguration', name: 'OverrideButtonConfiguration')
    PayloadTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PayloadTooLargeException', name: 'PayloadTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    PhoneNumberValidateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PhoneNumberValidateRequest', name: 'PhoneNumberValidateRequest')
    PhoneNumberValidateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PhoneNumberValidateResponse', name: 'PhoneNumberValidateResponse')
    PublicEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PublicEndpoint', name: 'PublicEndpoint')
    PushMessageActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PushMessageActivity', name: 'PushMessageActivity')
    PushNotificationTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PushNotificationTemplateRequest', name: 'PushNotificationTemplateRequest')
    PushNotificationTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PushNotificationTemplateResponse', name: 'PushNotificationTemplateResponse')
    PutEventStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventStreamRequest', name: 'PutEventStreamRequest')
    PutEventStreamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventStreamResponse', name: 'PutEventStreamResponse')
    PutEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventsRequest', name: 'PutEventsRequest')
    PutEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#PutEventsResponse', name: 'PutEventsResponse')
    QuietTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#QuietTime', name: 'QuietTime')
    RandomSplitActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RandomSplitActivity', name: 'RandomSplitActivity')
    RandomSplitEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RandomSplitEntry', name: 'RandomSplitEntry')
    RawEmail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RawEmail', name: 'RawEmail')
    RecencyDimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RecencyDimension', name: 'RecencyDimension')
    RecencyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#RecencyType', name: 'RecencyType')
    RecommenderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RecommenderConfigurationResponse', name: 'RecommenderConfigurationResponse')
    RemoveAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RemoveAttributesRequest', name: 'RemoveAttributesRequest')
    RemoveAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#RemoveAttributesResponse', name: 'RemoveAttributesResponse')
    ResultRow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ResultRow', name: 'ResultRow')
    ResultRowValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#ResultRowValue', name: 'ResultRowValue')
    SMSChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSChannelRequest', name: 'SMSChannelRequest')
    SMSChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSChannelResponse', name: 'SMSChannelResponse')
    SMSMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSMessage', name: 'SMSMessage')
    SMSMessageActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSMessageActivity', name: 'SMSMessageActivity')
    SMSTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSTemplateRequest', name: 'SMSTemplateRequest')
    SMSTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SMSTemplateResponse', name: 'SMSTemplateResponse')
    Schedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Schedule', name: 'Schedule')
    SegmentBehaviors = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentBehaviors', name: 'SegmentBehaviors')
    SegmentCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentCondition', name: 'SegmentCondition')
    SegmentDemographics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentDemographics', name: 'SegmentDemographics')
    SegmentDimensions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentDimensions', name: 'SegmentDimensions')
    SegmentGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentGroup', name: 'SegmentGroup')
    SegmentGroupList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentGroupList', name: 'SegmentGroupList')
    SegmentImportResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentImportResource', name: 'SegmentImportResource')
    SegmentLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentLocation', name: 'SegmentLocation')
    SegmentReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentReference', name: 'SegmentReference')
    SegmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentResponse', name: 'SegmentResponse')
    SegmentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#SegmentType', name: 'SegmentType')
    SegmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SegmentsResponse', name: 'SegmentsResponse')
    SendMessagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendMessagesRequest', name: 'SendMessagesRequest')
    SendMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendMessagesResponse', name: 'SendMessagesResponse')
    SendOTPMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendOTPMessageRequest', name: 'SendOTPMessageRequest')
    SendOTPMessageRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendOTPMessageRequestParameters', name: 'SendOTPMessageRequestParameters')
    SendOTPMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendOTPMessageResponse', name: 'SendOTPMessageResponse')
    SendUsersMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessageRequest', name: 'SendUsersMessageRequest')
    SendUsersMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessageResponse', name: 'SendUsersMessageResponse')
    SendUsersMessagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessagesRequest', name: 'SendUsersMessagesRequest')
    SendUsersMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SendUsersMessagesResponse', name: 'SendUsersMessagesResponse')
    Session = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Session', name: 'Session')
    SetDimension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SetDimension', name: 'SetDimension')
    SimpleCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SimpleCondition', name: 'SimpleCondition')
    SimpleEmail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SimpleEmail', name: 'SimpleEmail')
    SimpleEmailPart = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#SimpleEmailPart', name: 'SimpleEmailPart')
    SourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#SourceType', name: 'SourceType')
    StartCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#StartCondition', name: 'StartCondition')
    State = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#State', name: 'State')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TagResourceRequest', name: 'TagResourceRequest')
    TagsModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TagsModel', name: 'TagsModel')
    Template = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#Template', name: 'Template')
    TemplateActiveVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateActiveVersionRequest', name: 'TemplateActiveVersionRequest')
    TemplateConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateConfiguration', name: 'TemplateConfiguration')
    TemplateCreateMessageBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateCreateMessageBody', name: 'TemplateCreateMessageBody')
    TemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateResponse', name: 'TemplateResponse')
    TemplateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#TemplateType', name: 'TemplateType')
    TemplateVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateVersionResponse', name: 'TemplateVersionResponse')
    TemplateVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplateVersionsResponse', name: 'TemplateVersionsResponse')
    TemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TemplatesResponse', name: 'TemplatesResponse')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TreatmentResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#TreatmentResource', name: 'TreatmentResource')
    Type = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#Type', name: 'Type')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAdmChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateAdmChannelRequest', name: 'UpdateAdmChannelRequest')
    UpdateAdmChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateAdmChannelResponse', name: 'UpdateAdmChannelResponse')
    UpdateApnsChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsChannelRequest', name: 'UpdateApnsChannelRequest')
    UpdateApnsChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsChannelResponse', name: 'UpdateApnsChannelResponse')
    UpdateApnsSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsSandboxChannelRequest', name: 'UpdateApnsSandboxChannelRequest')
    UpdateApnsSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsSandboxChannelResponse', name: 'UpdateApnsSandboxChannelResponse')
    UpdateApnsVoipChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipChannelRequest', name: 'UpdateApnsVoipChannelRequest')
    UpdateApnsVoipChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipChannelResponse', name: 'UpdateApnsVoipChannelResponse')
    UpdateApnsVoipSandboxChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipSandboxChannelRequest', name: 'UpdateApnsVoipSandboxChannelRequest')
    UpdateApnsVoipSandboxChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApnsVoipSandboxChannelResponse', name: 'UpdateApnsVoipSandboxChannelResponse')
    UpdateApplicationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApplicationSettingsRequest', name: 'UpdateApplicationSettingsRequest')
    UpdateApplicationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateApplicationSettingsResponse', name: 'UpdateApplicationSettingsResponse')
    UpdateAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateAttributesRequest', name: 'UpdateAttributesRequest')
    UpdateBaiduChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateBaiduChannelRequest', name: 'UpdateBaiduChannelRequest')
    UpdateBaiduChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateBaiduChannelResponse', name: 'UpdateBaiduChannelResponse')
    UpdateCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateCampaignRequest', name: 'UpdateCampaignRequest')
    UpdateCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateCampaignResponse', name: 'UpdateCampaignResponse')
    UpdateEmailChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailChannelRequest', name: 'UpdateEmailChannelRequest')
    UpdateEmailChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailChannelResponse', name: 'UpdateEmailChannelResponse')
    UpdateEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailTemplateRequest', name: 'UpdateEmailTemplateRequest')
    UpdateEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEmailTemplateResponse', name: 'UpdateEmailTemplateResponse')
    UpdateEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointRequest', name: 'UpdateEndpointRequest')
    UpdateEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointResponse', name: 'UpdateEndpointResponse')
    UpdateEndpointsBatchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointsBatchRequest', name: 'UpdateEndpointsBatchRequest')
    UpdateEndpointsBatchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateEndpointsBatchResponse', name: 'UpdateEndpointsBatchResponse')
    UpdateGcmChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateGcmChannelRequest', name: 'UpdateGcmChannelRequest')
    UpdateGcmChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateGcmChannelResponse', name: 'UpdateGcmChannelResponse')
    UpdateInAppTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateInAppTemplateRequest', name: 'UpdateInAppTemplateRequest')
    UpdateInAppTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateInAppTemplateResponse', name: 'UpdateInAppTemplateResponse')
    UpdateJourneyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyRequest', name: 'UpdateJourneyRequest')
    UpdateJourneyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyResponse', name: 'UpdateJourneyResponse')
    UpdateJourneyStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyStateRequest', name: 'UpdateJourneyStateRequest')
    UpdateJourneyStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateJourneyStateResponse', name: 'UpdateJourneyStateResponse')
    UpdatePushTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdatePushTemplateRequest', name: 'UpdatePushTemplateRequest')
    UpdatePushTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdatePushTemplateResponse', name: 'UpdatePushTemplateResponse')
    UpdateRecommenderConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateRecommenderConfigurationRequest', name: 'UpdateRecommenderConfigurationRequest')
    UpdateRecommenderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateRecommenderConfigurationResponse', name: 'UpdateRecommenderConfigurationResponse')
    UpdateRecommenderConfigurationShape = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateRecommenderConfigurationShape', name: 'UpdateRecommenderConfigurationShape')
    UpdateSegmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSegmentRequest', name: 'UpdateSegmentRequest')
    UpdateSegmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSegmentResponse', name: 'UpdateSegmentResponse')
    UpdateSmsChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsChannelRequest', name: 'UpdateSmsChannelRequest')
    UpdateSmsChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsChannelResponse', name: 'UpdateSmsChannelResponse')
    UpdateSmsTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsTemplateRequest', name: 'UpdateSmsTemplateRequest')
    UpdateSmsTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateSmsTemplateResponse', name: 'UpdateSmsTemplateResponse')
    UpdateTemplateActiveVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateTemplateActiveVersionRequest', name: 'UpdateTemplateActiveVersionRequest')
    UpdateTemplateActiveVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateTemplateActiveVersionResponse', name: 'UpdateTemplateActiveVersionResponse')
    UpdateVoiceChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceChannelRequest', name: 'UpdateVoiceChannelRequest')
    UpdateVoiceChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceChannelResponse', name: 'UpdateVoiceChannelResponse')
    UpdateVoiceTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceTemplateRequest', name: 'UpdateVoiceTemplateRequest')
    UpdateVoiceTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#UpdateVoiceTemplateResponse', name: 'UpdateVoiceTemplateResponse')
    VerificationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerificationResponse', name: 'VerificationResponse')
    VerifyOTPMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerifyOTPMessageRequest', name: 'VerifyOTPMessageRequest')
    VerifyOTPMessageRequestParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerifyOTPMessageRequestParameters', name: 'VerifyOTPMessageRequestParameters')
    VerifyOTPMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VerifyOTPMessageResponse', name: 'VerifyOTPMessageResponse')
    VoiceChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceChannelRequest', name: 'VoiceChannelRequest')
    VoiceChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceChannelResponse', name: 'VoiceChannelResponse')
    VoiceMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceMessage', name: 'VoiceMessage')
    VoiceTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceTemplateRequest', name: 'VoiceTemplateRequest')
    VoiceTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#VoiceTemplateResponse', name: 'VoiceTemplateResponse')
    WaitActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WaitActivity', name: 'WaitActivity')
    WaitTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WaitTime', name: 'WaitTime')
    WriteApplicationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteApplicationSettingsRequest', name: 'WriteApplicationSettingsRequest')
    WriteCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteCampaignRequest', name: 'WriteCampaignRequest')
    WriteEventStream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteEventStream', name: 'WriteEventStream')
    WriteJourneyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteJourneyRequest', name: 'WriteJourneyRequest')
    WriteSegmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteSegmentRequest', name: 'WriteSegmentRequest')
    WriteTreatmentResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpoint#WriteTreatmentResource', name: 'WriteTreatmentResource')
    Endpointtypeselement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#__EndpointTypesElement', name: 'Endpointtypeselement')
    Timezoneestimationmethodselement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpoint#__TimezoneEstimationMethodsElement', name: 'Timezoneestimationmethodselement')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.pinpoint#__blob', name: 'Blob')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.pinpoint#__boolean', name: 'Boolean')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.pinpoint#__double', name: 'Double')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpoint#__integer', name: 'Integer')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpoint#__string', name: 'String')
    Timestampiso8601 = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.pinpoint#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    ADMChannelRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Client ID that you received from Amazon to send messages by using ADM.</p>", "smithy.api#required" => {}}))
    ADMChannelRequest.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientSecret', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Client Secret that you received from Amazon to send messages by using ADM.</p>", "smithy.api#required" => {}}))
    ADMChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the ADM channel for the application.</p>"}))
    ADMChannelRequest.type = Types::ADMChannelRequest
    ADMChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the ADM channel applies to.</p>"}))
    ADMChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the ADM channel was enabled.</p>"}))
    ADMChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the ADM channel is enabled for the application.</p>"}))
    ADMChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    ADMChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the ADM channel. This property is retained only for backward compatibility.</p>"}))
    ADMChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the ADM channel is archived.</p>"}))
    ADMChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the ADM channel.</p>"}))
    ADMChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the ADM channel was last modified.</p>"}))
    ADMChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the ADM channel, this value is ADM.</p>", "smithy.api#required" => {}}))
    ADMChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the ADM channel.</p>"}))
    ADMChannelResponse.type = Types::ADMChannelResponse
    ADMMessage.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    ADMMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the notification message.</p>"}))
    ADMMessage.add_member(:consolidation_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsolidationKey', traits: {"smithy.api#documentation" => "<p>An arbitrary string that indicates that multiple messages are logically the same and that Amazon Device Messaging (ADM) can drop previously enqueued messages in favor of this message.</p>"}))
    ADMMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"}))
    ADMMessage.add_member(:expires_after, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExpiresAfter', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, that ADM should store the message if the recipient's device is offline. Amazon Pinpoint specifies this value in the expiresAfter parameter when it sends the notification message to ADM.</p>"}))
    ADMMessage.add_member(:icon_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IconReference', traits: {"smithy.api#documentation" => "<p>The icon image name of the asset saved in your app.</p>"}))
    ADMMessage.add_member(:image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the large icon image to display in the content view of the push notification.</p>"}))
    ADMMessage.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image to display in the push notification.</p>"}))
    ADMMessage.add_member(:md5, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5', traits: {"smithy.api#documentation" => "<p>The base64-encoded, MD5 checksum of the value specified by the Data property. ADM uses the MD5 value to verify the integrity of the data.</p>"}))
    ADMMessage.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"}))
    ADMMessage.add_member(:silent_push, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush', traits: {"smithy.api#documentation" => "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>"}))
    ADMMessage.add_member(:small_image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>"}))
    ADMMessage.add_member(:sound, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound', traits: {"smithy.api#documentation" => "<p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"}))
    ADMMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"}))
    ADMMessage.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to display above the notification message on the recipient's device.</p>"}))
    ADMMessage.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"}))
    ADMMessage.type = Types::ADMMessage
    APNSChannelRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"}))
    APNSChannelRequest.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.</p>"}))
    APNSChannelRequest.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.</p>"}))
    APNSChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the APNs channel for the application.</p>"}))
    APNSChannelRequest.add_member(:private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey', traits: {"smithy.api#documentation" => "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.</p>"}))
    APNSChannelRequest.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"}))
    APNSChannelRequest.add_member(:token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey', traits: {"smithy.api#documentation" => "<p>The authentication key to use for APNs tokens.</p>"}))
    APNSChannelRequest.add_member(:token_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId', traits: {"smithy.api#documentation" => "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.</p>"}))
    APNSChannelRequest.type = Types::APNSChannelRequest
    APNSChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the APNs channel applies to.</p>"}))
    APNSChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs channel was enabled.</p>"}))
    APNSChannelResponse.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.</p>"}))
    APNSChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs channel is enabled for the application.</p>"}))
    APNSChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    APNSChannelResponse.add_member(:has_token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"}))
    APNSChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the APNs channel. This property is retained only for backward compatibility.</p>"}))
    APNSChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs channel is archived.</p>"}))
    APNSChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the APNs channel.</p>"}))
    APNSChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs channel was last modified.</p>"}))
    APNSChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the APNs channel, this value is APNS.</p>", "smithy.api#required" => {}}))
    APNSChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the APNs channel.</p>"}))
    APNSChannelResponse.type = Types::APNSChannelResponse
    APNSMessage.add_member(:apns_push_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'APNSPushType', traits: {"smithy.api#documentation" => "<p>The type of push notification to send. Valid values are:</p> <ul><li><p>alert - For a standard notification that's displayed on recipients' devices and prompts a recipient to interact with the notification.</p></li> <li><p>background - For a silent notification that delivers content in the background and isn't displayed on recipients' devices.</p></li> <li><p>complication - For a notification that contains update information for an app’s complication timeline.</p></li> <li><p>fileprovider - For a notification that signals changes to a File Provider extension.</p></li> <li><p>mdm - For a notification that tells managed devices to contact the MDM server.</p></li> <li><p>voip - For a notification that provides information about an incoming VoIP call.</p></li></ul> <p>Amazon Pinpoint specifies this value in the apns-push-type request header when it sends the notification message to APNs. If you don't specify a value for this property, Amazon Pinpoint sets the value to alert or background automatically, based on the value that you specify for the SilentPush or RawContent property of the message.</p> <p>For more information about the apns-push-type request header, see <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns\">Sending Notification Requests to APNs</a> on the Apple Developer website.</p>"}))
    APNSMessage.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    APNSMessage.add_member(:badge, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Badge', traits: {"smithy.api#documentation" => "<p>The key that indicates whether and how to modify the badge of your app's icon when the recipient receives the push notification. If this key isn't included in the dictionary, the badge doesn't change. To remove the badge, set this value to 0.</p>"}))
    APNSMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the notification message.</p>"}))
    APNSMessage.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>The key that indicates the notification type for the push notification. This key is a value that's defined by the identifier property of one of your app's registered categories.</p>"}))
    APNSMessage.add_member(:collapse_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CollapseId', traits: {"smithy.api#documentation" => "<p>An arbitrary identifier that, if assigned to multiple messages, APNs uses to coalesce the messages into a single push notification instead of delivering each message individually. This value can't exceed 64 bytes.</p> <p>Amazon Pinpoint specifies this value in the apns-collapse-id request header when it sends the notification message to APNs.</p>"}))
    APNSMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The JSON payload to use for a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"}))
    APNSMessage.add_member(:media_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image or video to display in the push notification.</p>"}))
    APNSMessage.add_member(:preferred_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The authentication method that you want Amazon Pinpoint to use when authenticating with APNs, CERTIFICATE or TOKEN.</p>"}))
    APNSMessage.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>para>5 - Low priority, the notification might be delayed, delivered as part of a group, or throttled.</p>/listitem> <li><p>10 - High priority, the notification is sent immediately. This is the default value. A high priority notification should trigger an alert, play a sound, or badge your app's icon on the recipient's device.</p></li>/para> <p>Amazon Pinpoint specifies this value in the apns-priority request header when it sends the notification message to APNs.</p> <p>The equivalent values for Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), are normal, for 5, and high, for 10. If you specify an FCM value for this property, Amazon Pinpoint accepts and converts the value to the corresponding APNs value.</p>"}))
    APNSMessage.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p> <note><p>If you specify the raw content of an APNs push notification, the message payload has to include the content-available key. The value of the content-available key has to be an integer, and can only be 0 or 1. If you're sending a standard notification, set the value of content-available to 0. If you're sending a silent (background) notification, set the value of content-available to 1. Additionally, silent notification payloads can't include the alert, badge, or sound keys. For more information, see <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification\">Generating a Remote Notification</a> and <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app\">Pushing Background Updates to Your App</a> on the Apple Developer website.</p></note>"}))
    APNSMessage.add_member(:silent_push, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush', traits: {"smithy.api#documentation" => "<p>Specifies whether the notification is a silent push notification. A silent (or background) push notification isn't displayed on recipients' devices. You can use silent push notifications to make small updates to your app, or to display messages in an in-app message center.</p> <p>Amazon Pinpoint uses this property to determine the correct value for the apns-push-type request header when it sends the notification message to APNs. If you specify a value of true for this property, Amazon Pinpoint sets the value for the apns-push-type header field to background.</p> <note><p>If you specify the raw content of an APNs push notification, the message payload has to include the content-available key. For silent (background) notifications, set the value of content-available to 1. Additionally, the message payload for a silent notification can't include the alert, badge, or sound keys. For more information, see <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification\">Generating a Remote Notification</a> and <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app\">Pushing Background Updates to Your App</a> on the Apple Developer website.</p> <p>Apple has indicated that they will throttle \"excessive\" background notifications based on current traffic volumes. To prevent your notifications being throttled, Apple recommends that you send no more than 3 silent push notifications to each recipient per hour.</p></note>"}))
    APNSMessage.add_member(:sound, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound', traits: {"smithy.api#documentation" => "<p>The key for the sound to play when the recipient receives the push notification. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>"}))
    APNSMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the notification message. You can override these default variables with individual address variables.</p>"}))
    APNSMessage.add_member(:thread_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThreadId', traits: {"smithy.api#documentation" => "<p>The key that represents your app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.</p>"}))
    APNSMessage.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, that APNs should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If this value is 0, APNs treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>Amazon Pinpoint specifies this value in the apns-expiration request header when it sends the notification message to APNs.</p>"}))
    APNSMessage.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to display above the notification message on the recipient's device.</p>"}))
    APNSMessage.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"}))
    APNSMessage.type = Types::APNSMessage
    APNSPushNotificationTemplate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    APNSPushNotificationTemplate.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The message body to use in push notifications that are based on the message template.</p>"}))
    APNSPushNotificationTemplate.add_member(:media_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image or video to display in push notifications that are based on the message template.</p>"}))
    APNSPushNotificationTemplate.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for push notifications that are based on the message template. If specified, this value overrides all other content for the message template.</p>"}))
    APNSPushNotificationTemplate.add_member(:sound, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound', traits: {"smithy.api#documentation" => "<p>The key for the sound to play when the recipient receives a push notification that's based on the message template. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>"}))
    APNSPushNotificationTemplate.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.</p>"}))
    APNSPushNotificationTemplate.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in the recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>"}))
    APNSPushNotificationTemplate.type = Types::APNSPushNotificationTemplate
    APNSSandboxChannelRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"}))
    APNSSandboxChannelRequest.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.</p>"}))
    APNSSandboxChannelRequest.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment, key or certificate.</p>"}))
    APNSSandboxChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the APNs sandbox channel for the application.</p>"}))
    APNSSandboxChannelRequest.add_member(:private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey', traits: {"smithy.api#documentation" => "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.</p>"}))
    APNSSandboxChannelRequest.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"}))
    APNSSandboxChannelRequest.add_member(:token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey', traits: {"smithy.api#documentation" => "<p>The authentication key to use for APNs tokens.</p>"}))
    APNSSandboxChannelRequest.add_member(:token_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId', traits: {"smithy.api#documentation" => "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.</p>"}))
    APNSSandboxChannelRequest.type = Types::APNSSandboxChannelRequest
    APNSSandboxChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the APNs sandbox channel applies to.</p>"}))
    APNSSandboxChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs sandbox channel was enabled.</p>"}))
    APNSSandboxChannelResponse.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.</p>"}))
    APNSSandboxChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs sandbox channel is enabled for the application.</p>"}))
    APNSSandboxChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    APNSSandboxChannelResponse.add_member(:has_token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"}))
    APNSSandboxChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the APNs sandbox channel. This property is retained only for backward compatibility.</p>"}))
    APNSSandboxChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs sandbox channel is archived.</p>"}))
    APNSSandboxChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the APNs sandbox channel.</p>"}))
    APNSSandboxChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs sandbox channel was last modified.</p>"}))
    APNSSandboxChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the APNs sandbox channel, this value is APNS_SANDBOX.</p>", "smithy.api#required" => {}}))
    APNSSandboxChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the APNs sandbox channel.</p>"}))
    APNSSandboxChannelResponse.type = Types::APNSSandboxChannelResponse
    APNSVoipChannelRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"}))
    APNSVoipChannelRequest.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.</p>"}))
    APNSVoipChannelRequest.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.</p>"}))
    APNSVoipChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the APNs VoIP channel for the application.</p>"}))
    APNSVoipChannelRequest.add_member(:private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey', traits: {"smithy.api#documentation" => "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.</p>"}))
    APNSVoipChannelRequest.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"}))
    APNSVoipChannelRequest.add_member(:token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey', traits: {"smithy.api#documentation" => "<p>The authentication key to use for APNs tokens.</p>"}))
    APNSVoipChannelRequest.add_member(:token_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId', traits: {"smithy.api#documentation" => "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.</p>"}))
    APNSVoipChannelRequest.type = Types::APNSVoipChannelRequest
    APNSVoipChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the APNs VoIP channel applies to.</p>"}))
    APNSVoipChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs VoIP channel was enabled.</p>"}))
    APNSVoipChannelResponse.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.</p>"}))
    APNSVoipChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs VoIP channel is enabled for the application.</p>"}))
    APNSVoipChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    APNSVoipChannelResponse.add_member(:has_token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs VoIP channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"}))
    APNSVoipChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the APNs VoIP channel. This property is retained only for backward compatibility.</p>"}))
    APNSVoipChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs VoIP channel is archived.</p>"}))
    APNSVoipChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the APNs VoIP channel.</p>"}))
    APNSVoipChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs VoIP channel was last modified.</p>"}))
    APNSVoipChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the APNs VoIP channel, this value is APNS_VOIP.</p>", "smithy.api#required" => {}}))
    APNSVoipChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the APNs VoIP channel.</p>"}))
    APNSVoipChannelResponse.type = Types::APNSVoipChannelResponse
    APNSVoipSandboxChannelRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"}))
    APNSVoipSandboxChannelRequest.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.</p>"}))
    APNSVoipSandboxChannelRequest.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment for this channel, key or certificate.</p>"}))
    APNSVoipSandboxChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs VoIP sandbox channel is enabled for the application.</p>"}))
    APNSVoipSandboxChannelRequest.add_member(:private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey', traits: {"smithy.api#documentation" => "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.</p>"}))
    APNSVoipSandboxChannelRequest.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"}))
    APNSVoipSandboxChannelRequest.add_member(:token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKey', traits: {"smithy.api#documentation" => "<p>The authentication key to use for APNs tokens.</p>"}))
    APNSVoipSandboxChannelRequest.add_member(:token_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenKeyId', traits: {"smithy.api#documentation" => "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.</p>"}))
    APNSVoipSandboxChannelRequest.type = Types::APNSVoipSandboxChannelRequest
    APNSVoipSandboxChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the APNs VoIP sandbox channel applies to.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs VoIP sandbox channel was enabled.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs VoIP sandbox channel is enabled for the application.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:has_token_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasTokenKey', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs VoIP sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the APNs VoIP sandbox channel. This property is retained only for backward compatibility.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the APNs VoIP sandbox channel is archived.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the APNs VoIP sandbox channel.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the APNs VoIP sandbox channel was last modified.</p>"}))
    APNSVoipSandboxChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the APNs VoIP sandbox channel, this value is APNS_VOIP_SANDBOX.</p>", "smithy.api#required" => {}}))
    APNSVoipSandboxChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the APNs VoIP sandbox channel.</p>"}))
    APNSVoipSandboxChannelResponse.type = Types::APNSVoipSandboxChannelResponse
    Action.add_member(:open_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_APP', traits: {"smithy.api#enumValue" => "OPEN_APP"}))
    Action.add_member(:deep_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEEP_LINK', traits: {"smithy.api#enumValue" => "DEEP_LINK"}))
    Action.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URL', traits: {"smithy.api#enumValue" => "URL"}))
    ActivitiesResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfActivityResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each activity that was performed by the campaign.</p>", "smithy.api#required" => {}}))
    ActivitiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    ActivitiesResponse.type = Types::ActivitiesResponse
    Activity.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMessageActivity, location_name: 'CUSTOM', traits: {"smithy.api#documentation" => "<p>The settings for a custom message activity. This type of activity calls an AWS Lambda function or web hook that sends messages to participants.</p>"}))
    Activity.add_member(:conditional_split, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalSplitActivity, location_name: 'ConditionalSplit', traits: {"smithy.api#documentation" => "<p>The settings for a yes/no split activity. This type of activity sends participants down one of two paths in a journey, based on conditions that you specify.</p>"}))
    Activity.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The custom description of the activity.</p>"}))
    Activity.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessageActivity, location_name: 'EMAIL', traits: {"smithy.api#documentation" => "<p>The settings for an email activity. This type of activity sends an email message to participants.</p>"}))
    Activity.add_member(:holdout, Smithy::Schema::Shapes::ShapeRef.new(shape: HoldoutActivity, location_name: 'Holdout', traits: {"smithy.api#documentation" => "<p>The settings for a holdout activity. This type of activity stops a journey for a specified percentage of participants.</p>"}))
    Activity.add_member(:multi_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiConditionalSplitActivity, location_name: 'MultiCondition', traits: {"smithy.api#documentation" => "<p>The settings for a multivariate split activity. This type of activity sends participants down one of as many as five paths (including a default <i>Else</i> path) in a journey, based on conditions that you specify.</p>"}))
    Activity.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: PushMessageActivity, location_name: 'PUSH', traits: {"smithy.api#documentation" => "<p>The settings for a push notification activity. This type of activity sends a push notification to participants.</p>"}))
    Activity.add_member(:random_split, Smithy::Schema::Shapes::ShapeRef.new(shape: RandomSplitActivity, location_name: 'RandomSplit', traits: {"smithy.api#documentation" => "<p>The settings for a random split activity. This type of activity randomly sends specified percentages of participants down one of as many as five paths in a journey, based on conditions that you specify.</p>"}))
    Activity.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessageActivity, location_name: 'SMS', traits: {"smithy.api#documentation" => "<p>The settings for an SMS activity. This type of activity sends a text message to participants.</p>"}))
    Activity.add_member(:wait, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitActivity, location_name: 'Wait', traits: {"smithy.api#documentation" => "<p>The settings for a wait activity. This type of activity waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p>"}))
    Activity.add_member(:contact_center, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactCenterActivity, location_name: 'ContactCenter', traits: {"smithy.api#documentation" => "<p>The settings for a connect activity. This type of activity initiates a contact center call to participants.</p>"}))
    Activity.type = Types::Activity
    ActivityResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the campaign applies to.</p>", "smithy.api#required" => {}}))
    ActivityResponse.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the campaign that the activity applies to.</p>", "smithy.api#required" => {}}))
    ActivityResponse.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'End', traits: {"smithy.api#documentation" => "<p>The actual time, in ISO 8601 format, when the activity was marked CANCELLED or COMPLETED.</p>"}))
    ActivityResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the activity.</p>", "smithy.api#required" => {}}))
    ActivityResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>Specifies whether the activity succeeded. Possible values are SUCCESS and FAIL.</p>"}))
    ActivityResponse.add_member(:scheduled_start, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledStart', traits: {"smithy.api#documentation" => "<p>The scheduled start time, in ISO 8601 format, for the activity.</p>"}))
    ActivityResponse.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Start', traits: {"smithy.api#documentation" => "<p>The actual start time, in ISO 8601 format, of the activity.</p>"}))
    ActivityResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the activity. Possible values are: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.</p>"}))
    ActivityResponse.add_member(:successful_endpoint_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SuccessfulEndpointCount', traits: {"smithy.api#documentation" => "<p>The total number of endpoints that the campaign successfully delivered messages to.</p>"}))
    ActivityResponse.add_member(:timezones_completed_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimezonesCompletedCount', traits: {"smithy.api#documentation" => "<p>The total number of time zones that were completed.</p>"}))
    ActivityResponse.add_member(:timezones_total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimezonesTotalCount', traits: {"smithy.api#documentation" => "<p>The total number of unique time zones that are in the segment for the campaign.</p>"}))
    ActivityResponse.add_member(:total_endpoint_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalEndpointCount', traits: {"smithy.api#documentation" => "<p>The total number of endpoints that the campaign attempted to deliver messages to.</p>"}))
    ActivityResponse.add_member(:treatment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign treatment that the activity applies to. A treatment is a variation of a campaign that's used for A/B testing of a campaign.</p>"}))
    ActivityResponse.add_member(:execution_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'ExecutionMetrics', traits: {"smithy.api#documentation" => "<p>A JSON object that contains metrics relating to the campaign execution for this campaign activity. For information about the structure and contents of the results, see <a href=\"https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html\">Standard Amazon Pinpoint analytics metrics</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p>"}))
    ActivityResponse.type = Types::ActivityResponse
    AddressConfiguration.add_member(:body_override, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BodyOverride', traits: {"smithy.api#documentation" => "<p>The message body to use instead of the default message body. This value overrides the default message body.</p>"}))
    AddressConfiguration.add_member(:channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType', traits: {"smithy.api#documentation" => "<p>The channel to use when sending the message.</p>"}))
    AddressConfiguration.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>An object that maps custom attributes to attributes for the address and is attached to the message. Attribute names are case sensitive.</p> <p>For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>"}))
    AddressConfiguration.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the message. If specified, this value overrides all other values for the message.</p>"}))
    AddressConfiguration.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>A map of the message variables to merge with the variables specified by properties of the DefaultMessage object. The variables specified in this map take precedence over all other variables.</p>"}))
    AddressConfiguration.add_member(:title_override, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TitleOverride', traits: {"smithy.api#documentation" => "<p>The message title to use instead of the default message title. This value overrides the default message title.</p>"}))
    AddressConfiguration.type = Types::AddressConfiguration
    Alignment.add_member(:left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEFT', traits: {"smithy.api#enumValue" => "LEFT"}))
    Alignment.add_member(:center, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CENTER', traits: {"smithy.api#enumValue" => "CENTER"}))
    Alignment.add_member(:right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIGHT', traits: {"smithy.api#enumValue" => "RIGHT"}))
    AndroidPushNotificationTemplate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    AndroidPushNotificationTemplate.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The message body to use in a push notification that's based on the message template.</p>"}))
    AndroidPushNotificationTemplate.add_member(:image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the large icon image to display in the content view of a push notification that's based on the message template.</p>"}))
    AndroidPushNotificationTemplate.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image to display in a push notification that's based on the message template.</p>"}))
    AndroidPushNotificationTemplate.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for a push notification that's based on the message template. If specified, this value overrides all other content for the message template.</p>"}))
    AndroidPushNotificationTemplate.add_member(:small_image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the small icon image to display in the status bar and the content view of a push notification that's based on the message template.</p>"}))
    AndroidPushNotificationTemplate.add_member(:sound, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound', traits: {"smithy.api#documentation" => "<p>The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"}))
    AndroidPushNotificationTemplate.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to use in a push notification that's based on the message template. This title appears above the notification message on a recipient's device.</p>"}))
    AndroidPushNotificationTemplate.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>"}))
    AndroidPushNotificationTemplate.type = Types::AndroidPushNotificationTemplate
    ApplicationDateRangeKpiResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the metric applies to.</p>", "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>", "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:kpi_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:kpi_result, Smithy::Schema::Shapes::ShapeRef.new(shape: BaseKpiResult, location_name: 'KpiResult', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>", "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Application Metrics resource because the resource returns all results in a single page.</p>"}))
    ApplicationDateRangeKpiResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>", "smithy.api#required" => {}}))
    ApplicationDateRangeKpiResponse.type = Types::ApplicationDateRangeKpiResponse
    ApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>", "smithy.api#required" => {}}))
    ApplicationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#required" => {}}))
    ApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The display name of the application. This name is displayed as the <b>Project name</b> on the Amazon Pinpoint console.</p>", "smithy.api#required" => {}}))
    ApplicationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the application. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    ApplicationResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the Application was created.</p>"}))
    ApplicationResponse.type = Types::ApplicationResponse
    ApplicationSettingsJourneyLimits.add_member(:daily_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DailyCap', traits: {"smithy.api#documentation" => "<p>The daily number of messages that an endpoint can receive from all journeys. The maximum value is 100. If set to 0, this limit will not apply.</p>"}))
    ApplicationSettingsJourneyLimits.add_member(:timeframe_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyTimeframeCap, location_name: 'TimeframeCap', traits: {"smithy.api#documentation" => "<p>The default maximum number of messages that can be sent to an endpoint during the specified timeframe for all journeys.</p>"}))
    ApplicationSettingsJourneyLimits.add_member(:total_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalCap', traits: {"smithy.api#documentation" => "<p>The default maximum number of messages that a single journey can sent to a single endpoint. The maximum value is 100. If set to 0, this limit will not apply.</p>"}))
    ApplicationSettingsJourneyLimits.type = Types::ApplicationSettingsJourneyLimits
    ApplicationSettingsResource.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#required" => {}}))
    ApplicationSettingsResource.add_member(:campaign_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'CampaignHook', traits: {"smithy.api#documentation" => "<p>The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application.</p>"}))
    ApplicationSettingsResource.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the application's settings were last modified.</p>"}))
    ApplicationSettingsResource.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>The default sending limits for campaigns in the application.</p>"}))
    ApplicationSettingsResource.add_member(:quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime', traits: {"smithy.api#documentation" => "<p>The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings).</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled.</p>"}))
    ApplicationSettingsResource.add_member(:journey_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsJourneyLimits, location_name: 'JourneyLimits', traits: {"smithy.api#documentation" => "<p>The default sending limits for journeys in the application. These limits apply to each journey for the application but can be overridden, on a per journey basis, with the JourneyLimits resource.</p>"}))
    ApplicationSettingsResource.type = Types::ApplicationSettingsResource
    ApplicationsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfApplicationResponse, location_name: 'Item', traits: {"smithy.api#documentation" => "<p>An array of responses, one for each application that was returned.</p>"}))
    ApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    ApplicationsResponse.type = Types::ApplicationsResponse
    AttributeDimension.add_member(:attribute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeType, location_name: 'AttributeType', traits: {"smithy.api#documentation" => "<p>The type of segment dimension to use. Valid values are: <ul><li>INCLUSIVE - endpoints that have attributes matching the values are included in the segment.</li><li>EXCLUSIVE - endpoints that have attributes matching the values are excluded in the segment.</li><li>CONTAINS - endpoints that have attributes' substrings match the values are included in the segment.</li><li>BEFORE - endpoints with attributes read as ISO_INSTANT datetimes before the value are included in the segment.</li><li>AFTER - endpoints with attributes read as ISO_INSTANT datetimes after the value are included in the segment.</li><li>ON - endpoints with attributes read as ISO_INSTANT dates on the value are included in the segment. Time is ignored in this comparison.</li><li>BETWEEN - endpoints with attributes read as ISO_INSTANT datetimes between the values are included in the segment.</li></p>"}))
    AttributeDimension.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.</p>", "smithy.api#required" => {}}))
    AttributeDimension.type = Types::AttributeDimension
    AttributeType.add_member(:inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUSIVE', traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    AttributeType.add_member(:exclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUSIVE', traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    AttributeType.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    AttributeType.add_member(:before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEFORE', traits: {"smithy.api#enumValue" => "BEFORE"}))
    AttributeType.add_member(:after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER', traits: {"smithy.api#enumValue" => "AFTER"}))
    AttributeType.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON', traits: {"smithy.api#enumValue" => "ON"}))
    AttributeType.add_member(:between, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    AttributesResource.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application.</p>", "smithy.api#required" => {}}))
    AttributesResource.add_member(:attribute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of attribute or attributes that were removed from the endpoints. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users.</p></li></ul>", "smithy.api#required" => {}}))
    AttributesResource.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>An array that specifies the names of the attributes that were removed from the endpoints.</p>"}))
    AttributesResource.type = Types::AttributesResource
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    BadRequestException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    BadRequestException.type = Types::BadRequestException
    BaiduChannelRequest.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The API key that you received from the Baidu Cloud Push service to communicate with the service.</p>", "smithy.api#required" => {}}))
    BaiduChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the Baidu channel for the application.</p>"}))
    BaiduChannelRequest.add_member(:secret_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The secret key that you received from the Baidu Cloud Push service to communicate with the service.</p>", "smithy.api#required" => {}}))
    BaiduChannelRequest.type = Types::BaiduChannelRequest
    BaiduChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the Baidu channel applies to.</p>"}))
    BaiduChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the Baidu channel was enabled.</p>"}))
    BaiduChannelResponse.add_member(:credential, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Credential', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The API key that you received from the Baidu Cloud Push service to communicate with the service.</p>", "smithy.api#required" => {}}))
    BaiduChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the Baidu channel is enabled for the application.</p>"}))
    BaiduChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    BaiduChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the Baidu channel. This property is retained only for backward compatibility.</p>"}))
    BaiduChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the Baidu channel is archived.</p>"}))
    BaiduChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the Baidu channel.</p>"}))
    BaiduChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the Baidu channel was last modified.</p>"}))
    BaiduChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the Baidu channel, this value is BAIDU.</p>", "smithy.api#required" => {}}))
    BaiduChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the Baidu channel.</p>"}))
    BaiduChannelResponse.type = Types::BaiduChannelResponse
    BaiduMessage.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    BaiduMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the notification message.</p>"}))
    BaiduMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"}))
    BaiduMessage.add_member(:icon_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IconReference', traits: {"smithy.api#documentation" => "<p>The icon image name of the asset saved in your app.</p>"}))
    BaiduMessage.add_member(:image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the large icon image to display in the content view of the push notification.</p>"}))
    BaiduMessage.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image to display in the push notification.</p>"}))
    BaiduMessage.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"}))
    BaiduMessage.add_member(:silent_push, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush', traits: {"smithy.api#documentation" => "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>"}))
    BaiduMessage.add_member(:small_image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>"}))
    BaiduMessage.add_member(:sound, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound', traits: {"smithy.api#documentation" => "<p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"}))
    BaiduMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"}))
    BaiduMessage.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, that the Baidu Cloud Push service should store the message if the recipient's device is offline. The default value and maximum supported time is 604,800 seconds (7 days).</p>"}))
    BaiduMessage.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to display above the notification message on the recipient's device.</p>"}))
    BaiduMessage.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"}))
    BaiduMessage.type = Types::BaiduMessage
    BaseKpiResult.add_member(:rows, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfResultRow, location_name: 'Rows', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of objects that provides the results of a query that retrieved the data for a standard metric that applies to an application, campaign, or journey.</p>", "smithy.api#required" => {}}))
    BaseKpiResult.type = Types::BaseKpiResult
    ButtonAction.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINK', traits: {"smithy.api#enumValue" => "LINK"}))
    ButtonAction.add_member(:deep_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEEP_LINK', traits: {"smithy.api#enumValue" => "DEEP_LINK"}))
    ButtonAction.add_member(:close, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSE', traits: {"smithy.api#enumValue" => "CLOSE"}))
    CampaignCustomMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the message. The maximum size is 5 KB.</p>"}))
    CampaignCustomMessage.type = Types::CampaignCustomMessage
    CampaignDateRangeKpiResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the metric applies to.</p>", "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the campaign that the metric applies to.</p>", "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>", "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:kpi_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:kpi_result, Smithy::Schema::Shapes::ShapeRef.new(shape: BaseKpiResult, location_name: 'KpiResult', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>", "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Campaign Metrics resource because the resource returns all results in a single page.</p>"}))
    CampaignDateRangeKpiResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>", "smithy.api#required" => {}}))
    CampaignDateRangeKpiResponse.type = Types::CampaignDateRangeKpiResponse
    CampaignEmailMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the email for recipients whose email clients don't render HTML content.</p>"}))
    CampaignEmailMessage.add_member(:from_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress', traits: {"smithy.api#documentation" => "<p>The verified email address to send the email from. The default address is the FromAddress specified for the email channel for the application.</p>"}))
    CampaignEmailMessage.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>The list of <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-campaigns-campaign-id.html#apps-application-id-campaigns-campaign-id-model-messageheader\">MessageHeaders</a> for the email. You can have up to 15 MessageHeaders for each email.</p>"}))
    CampaignEmailMessage.add_member(:html_body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HtmlBody', traits: {"smithy.api#documentation" => "<p>The body of the email, in HTML format, for recipients whose email clients render HTML content.</p>"}))
    CampaignEmailMessage.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The subject line, or title, of the email.</p>"}))
    CampaignEmailMessage.type = Types::CampaignEmailMessage
    CampaignEventFilter.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDimensions, location_name: 'Dimensions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The dimension settings of the event filter for the campaign.</p>", "smithy.api#required" => {}}))
    CampaignEventFilter.add_member(:filter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterType, location_name: 'FilterType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of event that causes the campaign to be sent. Valid values are: SYSTEM, sends the campaign when a system event occurs; and, ENDPOINT, sends the campaign when an endpoint event (<link  linkend=\"apps-application-id-events\">Events</link> resource) occurs.</p>", "smithy.api#required" => {}}))
    CampaignEventFilter.type = Types::CampaignEventFilter
    CampaignHook.add_member(:lambda_function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LambdaFunctionName', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to customize a segment for a campaign.</p>"}))
    CampaignHook.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The mode that Amazon Pinpoint uses to invoke the AWS Lambda function. Possible values are:</p> <ul><li><p>FILTER - Invoke the function to customize the segment that's used by a campaign.</p></li> <li><p>DELIVERY - (Deprecated) Previously, invoked the function to send a campaign through a custom channel. This functionality is not supported anymore. To send a campaign through a custom channel, use the CustomDeliveryConfiguration and CampaignCustomMessage objects of the campaign.</p></li></ul>"}))
    CampaignHook.add_member(:web_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebUrl', traits: {"smithy.api#documentation" => "<p>The web URL that Amazon Pinpoint calls to invoke the AWS Lambda function over HTTPS.</p>"}))
    CampaignHook.type = Types::CampaignHook
    CampaignInAppMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The message body of the notification, the email body or the text message.</p>"}))
    CampaignInAppMessage.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>In-app message content.</p>"}))
    CampaignInAppMessage.add_member(:custom_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig', traits: {"smithy.api#documentation" => "<p>Custom config to be sent to client.</p>"}))
    CampaignInAppMessage.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout', traits: {"smithy.api#documentation" => "<p>In-app message layout.</p>"}))
    CampaignInAppMessage.type = Types::CampaignInAppMessage
    CampaignLimits.add_member(:daily, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Daily', traits: {"smithy.api#documentation" => "<p>The maximum number of messages that a campaign can send to a single endpoint during a 24-hour period. For an application, this value specifies the default limit for the number of messages that campaigns and journeys can send to a single endpoint during a 24-hour period. The maximum value is 100.</p>"}))
    CampaignLimits.add_member(:maximum_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaximumDuration', traits: {"smithy.api#documentation" => "<p>The maximum amount of time, in seconds, that a campaign can attempt to deliver a message after the scheduled start time for the campaign. The minimum value is 60 seconds.</p>"}))
    CampaignLimits.add_member(:messages_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MessagesPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of messages that a campaign can send each second. For an application, this value specifies the default limit for the number of messages that campaigns can send each second. The minimum value is 1. The maximum value is 20,000.</p>"}))
    CampaignLimits.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Total', traits: {"smithy.api#documentation" => "<p>The maximum number of messages that a campaign can send to a single endpoint during the course of the campaign. If a campaign recurs, this setting applies to all runs of the campaign. The maximum value is 100.</p>"}))
    CampaignLimits.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Session', traits: {"smithy.api#documentation" => "<p>The maximum total number of messages that the campaign can send per user session.</p>"}))
    CampaignLimits.type = Types::CampaignLimits
    CampaignResponse.add_member(:additional_treatments, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTreatmentResource, location_name: 'AdditionalTreatments', traits: {"smithy.api#documentation" => "<p>An array of responses, one for each treatment that you defined for the campaign, in addition to the default treatment.</p>"}))
    CampaignResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the campaign applies to.</p>", "smithy.api#required" => {}}))
    CampaignResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign.</p>", "smithy.api#required" => {}}))
    CampaignResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the campaign was created.</p>", "smithy.api#required" => {}}))
    CampaignResponse.add_member(:custom_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>The delivery configuration settings for sending the campaign through a custom channel.</p>"}))
    CampaignResponse.add_member(:default_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'DefaultState', traits: {"smithy.api#documentation" => "<p>The current status of the campaign's default treatment. This value exists only for campaigns that have more than one treatment.</p>"}))
    CampaignResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The custom description of the campaign.</p>"}))
    CampaignResponse.add_member(:holdout_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HoldoutPercent', traits: {"smithy.api#documentation" => "<p>The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.</p>"}))
    CampaignResponse.add_member(:hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'Hook', traits: {"smithy.api#documentation" => "<p>The settings for the AWS Lambda function to use as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.</p>"}))
    CampaignResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#required" => {}}))
    CampaignResponse.add_member(:is_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsPaused', traits: {"smithy.api#documentation" => "<p>Specifies whether the campaign is paused. A paused campaign doesn't run unless you resume it by changing this value to false.</p>"}))
    CampaignResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the campaign was last modified.</p>", "smithy.api#required" => {}}))
    CampaignResponse.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>The messaging limits for the campaign.</p>"}))
    CampaignResponse.add_member(:message_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#documentation" => "<p>The message configuration settings for the campaign.</p>"}))
    CampaignResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the campaign.</p>"}))
    CampaignResponse.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule settings for the campaign.</p>"}))
    CampaignResponse.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the segment that's associated with the campaign.</p>", "smithy.api#required" => {}}))
    CampaignResponse.add_member(:segment_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version number of the segment that's associated with the campaign.</p>", "smithy.api#required" => {}}))
    CampaignResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the campaign.</p>"}))
    CampaignResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the campaign. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    CampaignResponse.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration', traits: {"smithy.api#documentation" => "<p>The message template that’s used for the campaign.</p>"}))
    CampaignResponse.add_member(:treatment_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the default treatment for the campaign.</p>"}))
    CampaignResponse.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName', traits: {"smithy.api#documentation" => "<p>The custom name of the default treatment for the campaign, if the campaign has multiple treatments. A <i>treatment</i> is a variation of a campaign that's used for A/B testing.</p>"}))
    CampaignResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version number of the campaign.</p>"}))
    CampaignResponse.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>Defines the priority of the campaign, used to decide the order of messages displayed to user if there are multiple messages scheduled to be displayed at the same moment.</p>"}))
    CampaignResponse.type = Types::CampaignResponse
    CampaignSmsMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the SMS message.</p>"}))
    CampaignSmsMessage.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>"}))
    CampaignSmsMessage.add_member(:origination_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber', traits: {"smithy.api#documentation" => "<p>The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.</p>"}))
    CampaignSmsMessage.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID to display on recipients' devices when they receive the SMS message.</p>"}))
    CampaignSmsMessage.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId', traits: {"smithy.api#documentation" => "<p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>"}))
    CampaignSmsMessage.add_member(:template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId', traits: {"smithy.api#documentation" => "<p>The template ID received from the regulatory body for sending SMS in your country.</p>"}))
    CampaignSmsMessage.type = Types::CampaignSmsMessage
    CampaignState.add_member(:campaign_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignStatus, location_name: 'CampaignStatus', traits: {"smithy.api#documentation" => "<p>The current status of the campaign, or the current status of a treatment that belongs to an A/B test campaign.</p> <p>If a campaign uses A/B testing, the campaign has a status of COMPLETED only if all campaign treatments have a status of COMPLETED. If you delete the segment that's associated with a campaign, the campaign fails and has a status of DELETED.</p>"}))
    CampaignState.type = Types::CampaignState
    CampaignStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    CampaignStatus.add_member(:executing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTING', traits: {"smithy.api#enumValue" => "EXECUTING"}))
    CampaignStatus.add_member(:pending_next_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_NEXT_RUN', traits: {"smithy.api#enumValue" => "PENDING_NEXT_RUN"}))
    CampaignStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CampaignStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    CampaignStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    CampaignStatus.add_member(:invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    CampaignsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfCampaignResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each campaign that's associated with the application.</p>", "smithy.api#required" => {}}))
    CampaignsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    CampaignsResponse.type = Types::CampaignsResponse
    ChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application.</p>"}))
    ChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the channel was enabled.</p>"}))
    ChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the channel is enabled for the application.</p>"}))
    ChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    ChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the channel. This property is retained only for backward compatibility.</p>"}))
    ChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the channel is archived.</p>"}))
    ChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the channel.</p>"}))
    ChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the channel was last modified.</p>"}))
    ChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the channel.</p>"}))
    ChannelResponse.type = Types::ChannelResponse
    ChannelType.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUSH', traits: {"smithy.api#enumValue" => "PUSH"}))
    ChannelType.add_member(:gcm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GCM', traits: {"smithy.api#enumValue" => "GCM"}))
    ChannelType.add_member(:apns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS', traits: {"smithy.api#enumValue" => "APNS"}))
    ChannelType.add_member(:apns_sandbox, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    ChannelType.add_member(:apns_voip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP', traits: {"smithy.api#enumValue" => "APNS_VOIP"}))
    ChannelType.add_member(:apns_voip_sandbox, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_VOIP_SANDBOX"}))
    ChannelType.add_member(:adm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADM', traits: {"smithy.api#enumValue" => "ADM"}))
    ChannelType.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    ChannelType.add_member(:voice, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE', traits: {"smithy.api#enumValue" => "VOICE"}))
    ChannelType.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    ChannelType.add_member(:baidu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAIDU', traits: {"smithy.api#enumValue" => "BAIDU"}))
    ChannelType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ChannelType.add_member(:in_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_APP', traits: {"smithy.api#enumValue" => "IN_APP"}))
    ChannelsResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfChannelResponse, location_name: 'Channels', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A map that contains a multipart response for each channel. For each item in this object, the ChannelType is the key and the Channel is the value.</p>", "smithy.api#required" => {}}))
    ChannelsResponse.type = Types::ChannelsResponse
    ClosedDays.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'EMAIL', traits: {"smithy.api#documentation" => "<p>Rules for the Email channel.</p>"}))
    ClosedDays.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'SMS', traits: {"smithy.api#documentation" => "<p>Rules for the SMS channel.</p>"}))
    ClosedDays.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'PUSH', traits: {"smithy.api#documentation" => "<p>Rules for the Push channel.</p>"}))
    ClosedDays.add_member(:voice, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'VOICE', traits: {"smithy.api#documentation" => "<p>Rules for the Voice channel.</p>"}))
    ClosedDays.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfClosedDaysRules, location_name: 'CUSTOM', traits: {"smithy.api#documentation" => "<p>Rules for the Custom channel.</p>"}))
    ClosedDays.type = Types::ClosedDays
    ClosedDaysRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the closed day rule.</p>"}))
    ClosedDaysRule.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartDateTime', traits: {"smithy.api#documentation" => "<p>Start DateTime ISO 8601 format</p>"}))
    ClosedDaysRule.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndDateTime', traits: {"smithy.api#documentation" => "<p>End DateTime ISO 8601 format</p>"}))
    ClosedDaysRule.type = Types::ClosedDaysRule
    Condition.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSimpleCondition, location_name: 'Conditions', traits: {"smithy.api#documentation" => "<p>The conditions to evaluate for the activity.</p>"}))
    Condition.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>Specifies how to handle multiple conditions for the activity. For example, if you specify two conditions for an activity, whether both or only one of the conditions must be met for the activity to be performed.</p>"}))
    Condition.type = Types::Condition
    ConditionalSplitActivity.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>The conditions that define the paths for the activity, and the relationship between the conditions.</p>"}))
    ConditionalSplitActivity.add_member(:evaluation_wait_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTime, location_name: 'EvaluationWaitTime', traits: {"smithy.api#documentation" => "<p>The amount of time to wait before determining whether the conditions are met, or the date and time when Amazon Pinpoint determines whether the conditions are met.</p>"}))
    ConditionalSplitActivity.add_member(:false_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FalseActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the activity to perform if the conditions aren't met.</p>"}))
    ConditionalSplitActivity.add_member(:true_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrueActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the activity to perform if the conditions are met.</p>"}))
    ConditionalSplitActivity.type = Types::ConditionalSplitActivity
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    ConflictException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    ConflictException.type = Types::ConflictException
    ContactCenterActivity.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform after the this activity.</p>"}))
    ContactCenterActivity.type = Types::ContactCenterActivity
    CreateAppRequest.add_member(:create_application_request, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest, location_name: 'CreateApplicationRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateAppRequest[:http_payload] = :create_application_request
    CreateAppRequest[:http_payload_member] = CreateAppRequest.member(:create_application_request)
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResponse.add_member(:application_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse, location_name: 'ApplicationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateAppResponse[:http_payload] = :application_response
    CreateAppResponse[:http_payload_member] = CreateAppResponse.member(:application_response)
    CreateAppResponse.type = Types::CreateAppResponse
    CreateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The display name of the application. This name is displayed as the <b>Project name</b> on the Amazon Pinpoint console.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that defines the tags to associate with the application. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateCampaignRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:write_campaign_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteCampaignRequest, location_name: 'WriteCampaignRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateCampaignRequest[:http_payload] = :write_campaign_request
    CreateCampaignRequest[:http_payload_member] = CreateCampaignRequest.member(:write_campaign_request)
    CreateCampaignRequest.type = Types::CreateCampaignRequest
    CreateCampaignResponse.add_member(:campaign_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateCampaignResponse[:http_payload] = :campaign_response
    CreateCampaignResponse[:http_payload_member] = CreateCampaignResponse.member(:campaign_response)
    CreateCampaignResponse.type = Types::CreateCampaignResponse
    CreateEmailTemplateRequest.add_member(:email_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateRequest, location_name: 'EmailTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailTemplateRequest[:http_payload] = :email_template_request
    CreateEmailTemplateRequest[:http_payload_member] = CreateEmailTemplateRequest.member(:email_template_request)
    CreateEmailTemplateRequest.type = Types::CreateEmailTemplateRequest
    CreateEmailTemplateResponse.add_member(:create_template_message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateEmailTemplateResponse[:http_payload] = :create_template_message_body
    CreateEmailTemplateResponse[:http_payload_member] = CreateEmailTemplateResponse.member(:create_template_message_body)
    CreateEmailTemplateResponse.type = Types::CreateEmailTemplateResponse
    CreateExportJobRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateExportJobRequest.add_member(:export_job_request, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobRequest, location_name: 'ExportJobRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateExportJobRequest[:http_payload] = :export_job_request
    CreateExportJobRequest[:http_payload_member] = CreateExportJobRequest.member(:export_job_request)
    CreateExportJobRequest.type = Types::CreateExportJobRequest
    CreateExportJobResponse.add_member(:export_job_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResponse, location_name: 'ExportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateExportJobResponse[:http_payload] = :export_job_response
    CreateExportJobResponse[:http_payload_member] = CreateExportJobResponse.member(:export_job_response)
    CreateExportJobResponse.type = Types::CreateExportJobResponse
    CreateImportJobRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateImportJobRequest.add_member(:import_job_request, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobRequest, location_name: 'ImportJobRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateImportJobRequest[:http_payload] = :import_job_request
    CreateImportJobRequest[:http_payload_member] = CreateImportJobRequest.member(:import_job_request)
    CreateImportJobRequest.type = Types::CreateImportJobRequest
    CreateImportJobResponse.add_member(:import_job_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResponse, location_name: 'ImportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateImportJobResponse[:http_payload] = :import_job_response
    CreateImportJobResponse[:http_payload_member] = CreateImportJobResponse.member(:import_job_response)
    CreateImportJobResponse.type = Types::CreateImportJobResponse
    CreateInAppTemplateRequest.add_member(:in_app_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTemplateRequest, location_name: 'InAppTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateInAppTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInAppTemplateRequest[:http_payload] = :in_app_template_request
    CreateInAppTemplateRequest[:http_payload_member] = CreateInAppTemplateRequest.member(:in_app_template_request)
    CreateInAppTemplateRequest.type = Types::CreateInAppTemplateRequest
    CreateInAppTemplateResponse.add_member(:template_create_message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateCreateMessageBody, location_name: 'TemplateCreateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateInAppTemplateResponse[:http_payload] = :template_create_message_body
    CreateInAppTemplateResponse[:http_payload_member] = CreateInAppTemplateResponse.member(:template_create_message_body)
    CreateInAppTemplateResponse.type = Types::CreateInAppTemplateResponse
    CreateJourneyRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateJourneyRequest.add_member(:write_journey_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteJourneyRequest, location_name: 'WriteJourneyRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateJourneyRequest[:http_payload] = :write_journey_request
    CreateJourneyRequest[:http_payload_member] = CreateJourneyRequest.member(:write_journey_request)
    CreateJourneyRequest.type = Types::CreateJourneyRequest
    CreateJourneyResponse.add_member(:journey_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateJourneyResponse[:http_payload] = :journey_response
    CreateJourneyResponse[:http_payload_member] = CreateJourneyResponse.member(:journey_response)
    CreateJourneyResponse.type = Types::CreateJourneyResponse
    CreatePushTemplateRequest.add_member(:push_notification_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationTemplateRequest, location_name: 'PushNotificationTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreatePushTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePushTemplateRequest[:http_payload] = :push_notification_template_request
    CreatePushTemplateRequest[:http_payload_member] = CreatePushTemplateRequest.member(:push_notification_template_request)
    CreatePushTemplateRequest.type = Types::CreatePushTemplateRequest
    CreatePushTemplateResponse.add_member(:create_template_message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreatePushTemplateResponse[:http_payload] = :create_template_message_body
    CreatePushTemplateResponse[:http_payload_member] = CreatePushTemplateResponse.member(:create_template_message_body)
    CreatePushTemplateResponse.type = Types::CreatePushTemplateResponse
    CreateRecommenderConfigurationRequest.add_member(:create_recommender_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationShape, location_name: 'CreateRecommenderConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateRecommenderConfigurationRequest[:http_payload] = :create_recommender_configuration
    CreateRecommenderConfigurationRequest[:http_payload_member] = CreateRecommenderConfigurationRequest.member(:create_recommender_configuration)
    CreateRecommenderConfigurationRequest.type = Types::CreateRecommenderConfigurationRequest
    CreateRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    CreateRecommenderConfigurationResponse[:http_payload_member] = CreateRecommenderConfigurationResponse.member(:recommender_configuration_response)
    CreateRecommenderConfigurationResponse.type = Types::CreateRecommenderConfigurationResponse
    CreateRecommenderConfigurationShape.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:</p> <ul><li><p>An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.</p></li> <li><p>An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p></li></ul> <p>This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.</p>"}))
    CreateRecommenderConfigurationShape.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.</p>"}))
    CreateRecommenderConfigurationShape.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p>"}))
    CreateRecommenderConfigurationShape.add_member(:recommendation_provider_id_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderIdType', traits: {"smithy.api#documentation" => "<p>The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>"}))
    CreateRecommenderConfigurationShape.add_member(:recommendation_provider_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>", "smithy.api#required" => {}}))
    CreateRecommenderConfigurationShape.add_member(:recommendation_provider_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.</p>", "smithy.api#required" => {}}))
    CreateRecommenderConfigurationShape.add_member(:recommendation_transformer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationTransformerUri', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.</p>"}))
    CreateRecommenderConfigurationShape.add_member(:recommendations_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationsDisplayName', traits: {"smithy.api#documentation" => "<p>A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p> <p>This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.</p>"}))
    CreateRecommenderConfigurationShape.add_member(:recommendations_per_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RecommendationsPerMessage', traits: {"smithy.api#documentation" => "<p>The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5.</p> <p>To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"}))
    CreateRecommenderConfigurationShape.type = Types::CreateRecommenderConfigurationShape
    CreateSegmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSegmentRequest.add_member(:write_segment_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteSegmentRequest, location_name: 'WriteSegmentRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSegmentRequest[:http_payload] = :write_segment_request
    CreateSegmentRequest[:http_payload_member] = CreateSegmentRequest.member(:write_segment_request)
    CreateSegmentRequest.type = Types::CreateSegmentRequest
    CreateSegmentResponse.add_member(:segment_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSegmentResponse[:http_payload] = :segment_response
    CreateSegmentResponse[:http_payload_member] = CreateSegmentResponse.member(:segment_response)
    CreateSegmentResponse.type = Types::CreateSegmentResponse
    CreateSmsTemplateRequest.add_member(:sms_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSTemplateRequest, location_name: 'SMSTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSmsTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSmsTemplateRequest[:http_payload] = :sms_template_request
    CreateSmsTemplateRequest[:http_payload_member] = CreateSmsTemplateRequest.member(:sms_template_request)
    CreateSmsTemplateRequest.type = Types::CreateSmsTemplateRequest
    CreateSmsTemplateResponse.add_member(:create_template_message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSmsTemplateResponse[:http_payload] = :create_template_message_body
    CreateSmsTemplateResponse[:http_payload_member] = CreateSmsTemplateResponse.member(:create_template_message_body)
    CreateSmsTemplateResponse.type = Types::CreateSmsTemplateResponse
    CreateTemplateMessageBody.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template that was created.</p>"}))
    CreateTemplateMessageBody.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API for the request to create the message template.</p>"}))
    CreateTemplateMessageBody.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request to create the message template.</p>"}))
    CreateTemplateMessageBody.type = Types::CreateTemplateMessageBody
    CreateVoiceTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVoiceTemplateRequest.add_member(:voice_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceTemplateRequest, location_name: 'VoiceTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVoiceTemplateRequest[:http_payload] = :voice_template_request
    CreateVoiceTemplateRequest[:http_payload_member] = CreateVoiceTemplateRequest.member(:voice_template_request)
    CreateVoiceTemplateRequest.type = Types::CreateVoiceTemplateRequest
    CreateVoiceTemplateResponse.add_member(:create_template_message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateMessageBody, location_name: 'CreateTemplateMessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVoiceTemplateResponse[:http_payload] = :create_template_message_body
    CreateVoiceTemplateResponse[:http_payload_member] = CreateVoiceTemplateResponse.member(:create_template_message_body)
    CreateVoiceTemplateResponse.type = Types::CreateVoiceTemplateResponse
    CustomDeliveryConfiguration.add_member(:delivery_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeliveryUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The destination to send the campaign or treatment to. This value can be one of the following:</p> <ul><li><p>The name or Amazon Resource Name (ARN) of an AWS Lambda function to invoke to handle delivery of the campaign or treatment.</p></li> <li><p>The URL for a web application or service that supports HTTPS and can receive the message. The URL has to be a full URL, including the HTTPS protocol.</p></li></ul>", "smithy.api#required" => {}}))
    CustomDeliveryConfiguration.add_member(:endpoint_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointtypeselement, location_name: 'EndpointTypes', traits: {"smithy.api#documentation" => "<p>The types of endpoints to send the campaign or treatment to. Each valid value maps to a type of channel that you can associate with an endpoint by using the ChannelType property of an endpoint.</p>"}))
    CustomDeliveryConfiguration.type = Types::CustomDeliveryConfiguration
    CustomMessageActivity.add_member(:delivery_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeliveryUri', traits: {"smithy.api#documentation" => "<p>The destination to send the campaign or treatment to. This value can be one of the following:</p> <ul><li><p>The name or Amazon Resource Name (ARN) of an AWS Lambda function to invoke to handle delivery of the campaign or treatment.</p></li> <li><p>The URL for a web application or service that supports HTTPS and can receive the message. The URL has to be a full URL, including the HTTPS protocol.</p></li></ul>"}))
    CustomMessageActivity.add_member(:endpoint_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointtypeselement, location_name: 'EndpointTypes', traits: {"smithy.api#documentation" => "<p>The types of endpoints to send the custom message to. Each valid value maps to a type of channel that you can associate with an endpoint by using the ChannelType property of an endpoint.</p>"}))
    CustomMessageActivity.add_member(:message_config, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyCustomMessage, location_name: 'MessageConfig', traits: {"smithy.api#documentation" => "<p>Specifies the message data included in a custom channel message that's sent to participants in a journey.</p>"}))
    CustomMessageActivity.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after Amazon Pinpoint calls the AWS Lambda function or web hook.</p>"}))
    CustomMessageActivity.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom message template to use for the message. If specified, this value must match the name of an existing message template.</p>"}))
    CustomMessageActivity.add_member(:template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"}))
    CustomMessageActivity.type = Types::CustomMessageActivity
    DayOfWeek.add_member(:monday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONDAY', traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUESDAY', traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEDNESDAY', traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THURSDAY', traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRIDAY', traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SATURDAY', traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeek.add_member(:sunday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUNDAY', traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DefaultButtonConfiguration.add_member(:background_color, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackgroundColor', traits: {"smithy.api#documentation" => "<p>The background color of the button.</p>"}))
    DefaultButtonConfiguration.add_member(:border_radius, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BorderRadius', traits: {"smithy.api#documentation" => "<p>The border radius of the button.</p>"}))
    DefaultButtonConfiguration.add_member(:button_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonAction, location_name: 'ButtonAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Action triggered by the button.</p>", "smithy.api#required" => {}}))
    DefaultButtonConfiguration.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Link', traits: {"smithy.api#documentation" => "<p>Button destination.</p>"}))
    DefaultButtonConfiguration.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Button text.</p>", "smithy.api#required" => {}}))
    DefaultButtonConfiguration.add_member(:text_color, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextColor', traits: {"smithy.api#documentation" => "<p>The text color of the button.</p>"}))
    DefaultButtonConfiguration.type = Types::DefaultButtonConfiguration
    DefaultMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The default body of the message.</p>"}))
    DefaultMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the message. You can override these default variables with individual address variables.</p>"}))
    DefaultMessage.type = Types::DefaultMessage
    DefaultPushNotificationMessage.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The default action to occur if a recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS and Android platforms.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    DefaultPushNotificationMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The default body of the notification message.</p>"}))
    DefaultPushNotificationMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The JSON data payload to use for the default push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"}))
    DefaultPushNotificationMessage.add_member(:silent_push, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush', traits: {"smithy.api#documentation" => "<p>Specifies whether the default notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or delivering messages to an in-app notification center.</p>"}))
    DefaultPushNotificationMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"}))
    DefaultPushNotificationMessage.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The default title to display above the notification message on a recipient's device.</p>"}))
    DefaultPushNotificationMessage.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The default URL to open in a recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"}))
    DefaultPushNotificationMessage.type = Types::DefaultPushNotificationMessage
    DefaultPushNotificationTemplate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS and Android platforms.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    DefaultPushNotificationTemplate.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The message body to use in push notifications that are based on the message template.</p>"}))
    DefaultPushNotificationTemplate.add_member(:sound, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound', traits: {"smithy.api#documentation" => "<p>The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p> <p>For an iOS platform, this value is the key for the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>"}))
    DefaultPushNotificationTemplate.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.</p>"}))
    DefaultPushNotificationTemplate.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>"}))
    DefaultPushNotificationTemplate.type = Types::DefaultPushNotificationTemplate
    DeleteAdmChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAdmChannelRequest.type = Types::DeleteAdmChannelRequest
    DeleteAdmChannelResponse.add_member(:adm_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelResponse, location_name: 'ADMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteAdmChannelResponse[:http_payload] = :adm_channel_response
    DeleteAdmChannelResponse[:http_payload_member] = DeleteAdmChannelResponse.member(:adm_channel_response)
    DeleteAdmChannelResponse.type = Types::DeleteAdmChannelResponse
    DeleteApnsChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsChannelRequest.type = Types::DeleteApnsChannelRequest
    DeleteApnsChannelResponse.add_member(:apns_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelResponse, location_name: 'APNSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsChannelResponse[:http_payload] = :apns_channel_response
    DeleteApnsChannelResponse[:http_payload_member] = DeleteApnsChannelResponse.member(:apns_channel_response)
    DeleteApnsChannelResponse.type = Types::DeleteApnsChannelResponse
    DeleteApnsSandboxChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsSandboxChannelRequest.type = Types::DeleteApnsSandboxChannelRequest
    DeleteApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, location_name: 'APNSSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsSandboxChannelResponse[:http_payload] = :apns_sandbox_channel_response
    DeleteApnsSandboxChannelResponse[:http_payload_member] = DeleteApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)
    DeleteApnsSandboxChannelResponse.type = Types::DeleteApnsSandboxChannelResponse
    DeleteApnsVoipChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipChannelRequest.type = Types::DeleteApnsVoipChannelRequest
    DeleteApnsVoipChannelResponse.add_member(:apns_voip_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, location_name: 'APNSVoipChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipChannelResponse[:http_payload] = :apns_voip_channel_response
    DeleteApnsVoipChannelResponse[:http_payload_member] = DeleteApnsVoipChannelResponse.member(:apns_voip_channel_response)
    DeleteApnsVoipChannelResponse.type = Types::DeleteApnsVoipChannelResponse
    DeleteApnsVoipSandboxChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipSandboxChannelRequest.type = Types::DeleteApnsVoipSandboxChannelRequest
    DeleteApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, location_name: 'APNSVoipSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteApnsVoipSandboxChannelResponse[:http_payload] = :apns_voip_sandbox_channel_response
    DeleteApnsVoipSandboxChannelResponse[:http_payload_member] = DeleteApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)
    DeleteApnsVoipSandboxChannelResponse.type = Types::DeleteApnsVoipSandboxChannelResponse
    DeleteAppRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteAppResponse.add_member(:application_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse, location_name: 'ApplicationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteAppResponse[:http_payload] = :application_response
    DeleteAppResponse[:http_payload_member] = DeleteAppResponse.member(:application_response)
    DeleteAppResponse.type = Types::DeleteAppResponse
    DeleteBaiduChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBaiduChannelRequest.type = Types::DeleteBaiduChannelRequest
    DeleteBaiduChannelResponse.add_member(:baidu_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelResponse, location_name: 'BaiduChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteBaiduChannelResponse[:http_payload] = :baidu_channel_response
    DeleteBaiduChannelResponse[:http_payload_member] = DeleteBaiduChannelResponse.member(:baidu_channel_response)
    DeleteBaiduChannelResponse.type = Types::DeleteBaiduChannelResponse
    DeleteCampaignRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignRequest.type = Types::DeleteCampaignRequest
    DeleteCampaignResponse.add_member(:campaign_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteCampaignResponse[:http_payload] = :campaign_response
    DeleteCampaignResponse[:http_payload_member] = DeleteCampaignResponse.member(:campaign_response)
    DeleteCampaignResponse.type = Types::DeleteCampaignResponse
    DeleteEmailChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailChannelRequest.type = Types::DeleteEmailChannelRequest
    DeleteEmailChannelResponse.add_member(:email_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelResponse, location_name: 'EmailChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEmailChannelResponse[:http_payload] = :email_channel_response
    DeleteEmailChannelResponse[:http_payload_member] = DeleteEmailChannelResponse.member(:email_channel_response)
    DeleteEmailChannelResponse.type = Types::DeleteEmailChannelResponse
    DeleteEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    DeleteEmailTemplateRequest.type = Types::DeleteEmailTemplateRequest
    DeleteEmailTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEmailTemplateResponse[:http_payload] = :message_body
    DeleteEmailTemplateResponse[:http_payload_member] = DeleteEmailTemplateResponse.member(:message_body)
    DeleteEmailTemplateResponse.type = Types::DeleteEmailTemplateResponse
    DeleteEndpointRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEndpointRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The case insensitive unique identifier for the endpoint. The identifier can't contain <code>$</code>, <code>{</code> or <code>}</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEndpointRequest.type = Types::DeleteEndpointRequest
    DeleteEndpointResponse.add_member(:endpoint_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointResponse, location_name: 'EndpointResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEndpointResponse[:http_payload] = :endpoint_response
    DeleteEndpointResponse[:http_payload_member] = DeleteEndpointResponse.member(:endpoint_response)
    DeleteEndpointResponse.type = Types::DeleteEndpointResponse
    DeleteEventStreamRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventStreamRequest.type = Types::DeleteEventStreamRequest
    DeleteEventStreamResponse.add_member(:event_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: EventStream, location_name: 'EventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteEventStreamResponse[:http_payload] = :event_stream
    DeleteEventStreamResponse[:http_payload_member] = DeleteEventStreamResponse.member(:event_stream)
    DeleteEventStreamResponse.type = Types::DeleteEventStreamResponse
    DeleteGcmChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGcmChannelRequest.type = Types::DeleteGcmChannelRequest
    DeleteGcmChannelResponse.add_member(:gcm_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelResponse, location_name: 'GCMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteGcmChannelResponse[:http_payload] = :gcm_channel_response
    DeleteGcmChannelResponse[:http_payload_member] = DeleteGcmChannelResponse.member(:gcm_channel_response)
    DeleteGcmChannelResponse.type = Types::DeleteGcmChannelResponse
    DeleteInAppTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInAppTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    DeleteInAppTemplateRequest.type = Types::DeleteInAppTemplateRequest
    DeleteInAppTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteInAppTemplateResponse[:http_payload] = :message_body
    DeleteInAppTemplateResponse[:http_payload_member] = DeleteInAppTemplateResponse.member(:message_body)
    DeleteInAppTemplateResponse.type = Types::DeleteInAppTemplateResponse
    DeleteJourneyRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJourneyRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJourneyRequest.type = Types::DeleteJourneyRequest
    DeleteJourneyResponse.add_member(:journey_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteJourneyResponse[:http_payload] = :journey_response
    DeleteJourneyResponse[:http_payload_member] = DeleteJourneyResponse.member(:journey_response)
    DeleteJourneyResponse.type = Types::DeleteJourneyResponse
    DeletePushTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePushTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    DeletePushTemplateRequest.type = Types::DeletePushTemplateRequest
    DeletePushTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeletePushTemplateResponse[:http_payload] = :message_body
    DeletePushTemplateResponse[:http_payload_member] = DeletePushTemplateResponse.member(:message_body)
    DeletePushTemplateResponse.type = Types::DeletePushTemplateResponse
    DeleteRecommenderConfigurationRequest.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderConfigurationRequest.type = Types::DeleteRecommenderConfigurationRequest
    DeleteRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    DeleteRecommenderConfigurationResponse[:http_payload_member] = DeleteRecommenderConfigurationResponse.member(:recommender_configuration_response)
    DeleteRecommenderConfigurationResponse.type = Types::DeleteRecommenderConfigurationResponse
    DeleteSegmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentRequest.type = Types::DeleteSegmentRequest
    DeleteSegmentResponse.add_member(:segment_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteSegmentResponse[:http_payload] = :segment_response
    DeleteSegmentResponse[:http_payload_member] = DeleteSegmentResponse.member(:segment_response)
    DeleteSegmentResponse.type = Types::DeleteSegmentResponse
    DeleteSmsChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSmsChannelRequest.type = Types::DeleteSmsChannelRequest
    DeleteSmsChannelResponse.add_member(:sms_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelResponse, location_name: 'SMSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteSmsChannelResponse[:http_payload] = :sms_channel_response
    DeleteSmsChannelResponse[:http_payload_member] = DeleteSmsChannelResponse.member(:sms_channel_response)
    DeleteSmsChannelResponse.type = Types::DeleteSmsChannelResponse
    DeleteSmsTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSmsTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    DeleteSmsTemplateRequest.type = Types::DeleteSmsTemplateRequest
    DeleteSmsTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteSmsTemplateResponse[:http_payload] = :message_body
    DeleteSmsTemplateResponse[:http_payload_member] = DeleteSmsTemplateResponse.member(:message_body)
    DeleteSmsTemplateResponse.type = Types::DeleteSmsTemplateResponse
    DeleteUserEndpointsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserEndpointsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserEndpointsRequest.type = Types::DeleteUserEndpointsRequest
    DeleteUserEndpointsResponse.add_member(:endpoints_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsResponse, location_name: 'EndpointsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteUserEndpointsResponse[:http_payload] = :endpoints_response
    DeleteUserEndpointsResponse[:http_payload_member] = DeleteUserEndpointsResponse.member(:endpoints_response)
    DeleteUserEndpointsResponse.type = Types::DeleteUserEndpointsResponse
    DeleteVoiceChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceChannelRequest.type = Types::DeleteVoiceChannelRequest
    DeleteVoiceChannelResponse.add_member(:voice_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelResponse, location_name: 'VoiceChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVoiceChannelResponse[:http_payload] = :voice_channel_response
    DeleteVoiceChannelResponse[:http_payload_member] = DeleteVoiceChannelResponse.member(:voice_channel_response)
    DeleteVoiceChannelResponse.type = Types::DeleteVoiceChannelResponse
    DeleteVoiceTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    DeleteVoiceTemplateRequest.type = Types::DeleteVoiceTemplateRequest
    DeleteVoiceTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVoiceTemplateResponse[:http_payload] = :message_body
    DeleteVoiceTemplateResponse[:http_payload_member] = DeleteVoiceTemplateResponse.member(:message_body)
    DeleteVoiceTemplateResponse.type = Types::DeleteVoiceTemplateResponse
    DeliveryStatus.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    DeliveryStatus.add_member(:throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    DeliveryStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_FAILURE', traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    DeliveryStatus.add_member(:permanent_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMANENT_FAILURE', traits: {"smithy.api#enumValue" => "PERMANENT_FAILURE"}))
    DeliveryStatus.add_member(:unknown_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_FAILURE', traits: {"smithy.api#enumValue" => "UNKNOWN_FAILURE"}))
    DeliveryStatus.add_member(:opt_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPT_OUT', traits: {"smithy.api#enumValue" => "OPT_OUT"}))
    DeliveryStatus.add_member(:duplicate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE', traits: {"smithy.api#enumValue" => "DUPLICATE"}))
    DimensionType.add_member(:inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUSIVE', traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    DimensionType.add_member(:exclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUSIVE', traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    DirectMessageConfiguration.add_member(:adm_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ADMMessage, location_name: 'ADMMessage', traits: {"smithy.api#documentation" => "<p>The default push notification message for the ADM (Amazon Device Messaging) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"}))
    DirectMessageConfiguration.add_member(:apns_message, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSMessage, location_name: 'APNSMessage', traits: {"smithy.api#documentation" => "<p>The default push notification message for the APNs (Apple Push Notification service) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"}))
    DirectMessageConfiguration.add_member(:baidu_message, Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduMessage, location_name: 'BaiduMessage', traits: {"smithy.api#documentation" => "<p>The default push notification message for the Baidu (Baidu Cloud Push) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"}))
    DirectMessageConfiguration.add_member(:default_message, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultMessage, location_name: 'DefaultMessage', traits: {"smithy.api#documentation" => "<p>The default message for all channels.</p>"}))
    DirectMessageConfiguration.add_member(:default_push_notification_message, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultPushNotificationMessage, location_name: 'DefaultPushNotificationMessage', traits: {"smithy.api#documentation" => "<p>The default push notification message for all push notification channels.</p>"}))
    DirectMessageConfiguration.add_member(:email_message, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessage, location_name: 'EmailMessage', traits: {"smithy.api#documentation" => "<p>The default message for the email channel. This message overrides the default message (DefaultMessage).</p>"}))
    DirectMessageConfiguration.add_member(:gcm_message, Smithy::Schema::Shapes::ShapeRef.new(shape: GCMMessage, location_name: 'GCMMessage', traits: {"smithy.api#documentation" => "<p>The default push notification message for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"}))
    DirectMessageConfiguration.add_member(:sms_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessage, location_name: 'SMSMessage', traits: {"smithy.api#documentation" => "<p>The default message for the SMS channel. This message overrides the default message (DefaultMessage).</p>"}))
    DirectMessageConfiguration.add_member(:voice_message, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceMessage, location_name: 'VoiceMessage', traits: {"smithy.api#documentation" => "<p>The default message for the voice channel. This message overrides the default message (DefaultMessage).</p>"}))
    DirectMessageConfiguration.type = Types::DirectMessageConfiguration
    Duration.add_member(:hr_24, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HR_24', traits: {"smithy.api#enumValue" => "HR_24"}))
    Duration.add_member(:day_7, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY_7', traits: {"smithy.api#enumValue" => "DAY_7"}))
    Duration.add_member(:day_14, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY_14', traits: {"smithy.api#enumValue" => "DAY_14"}))
    Duration.add_member(:day_30, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY_30', traits: {"smithy.api#enumValue" => "DAY_30"}))
    EmailChannelRequest.add_member(:configuration_set, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationSet', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html\">Amazon SES configuration set</a> that you want to apply to messages that you send through the channel.</p>"}))
    EmailChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the email channel for the application.</p>"}))
    EmailChannelRequest.add_member(:from_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The verified email address that you want to send email from when you send email through the channel.</p>", "smithy.api#required" => {}}))
    EmailChannelRequest.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that you want to use when you send email through the channel.</p>", "smithy.api#required" => {}}))
    EmailChannelRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the AWS Identity and Access Management (IAM) role that you want Amazon Pinpoint to use when it submits email-related event data for the channel.</p>"}))
    EmailChannelRequest.add_member(:orchestration_sending_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OrchestrationSendingRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.</p>"}))
    EmailChannelRequest.type = Types::EmailChannelRequest
    EmailChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the email channel applies to.</p>"}))
    EmailChannelResponse.add_member(:configuration_set, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationSet', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html\">Amazon SES configuration set</a> that's applied to messages that are sent through the channel.</p>"}))
    EmailChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the email channel was enabled.</p>"}))
    EmailChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the email channel is enabled for the application.</p>"}))
    EmailChannelResponse.add_member(:from_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress', traits: {"smithy.api#documentation" => "<p>The verified email address that email is sent from when you send email through the channel.</p>"}))
    EmailChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    EmailChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the email channel. This property is retained only for backward compatibility.</p>"}))
    EmailChannelResponse.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identity', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that's used when you send email through the channel.</p>"}))
    EmailChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the email channel is archived.</p>"}))
    EmailChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the email channel.</p>"}))
    EmailChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the email channel was last modified.</p>"}))
    EmailChannelResponse.add_member(:messages_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MessagesPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of emails that can be sent through the channel each second.</p>"}))
    EmailChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the email channel, this value is EMAIL.</p>", "smithy.api#required" => {}}))
    EmailChannelResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon Pinpoint uses to submit email-related event data for the channel.</p>"}))
    EmailChannelResponse.add_member(:orchestration_sending_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OrchestrationSendingRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.</p>"}))
    EmailChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the email channel.</p>"}))
    EmailChannelResponse.type = Types::EmailChannelResponse
    EmailMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the email message.</p>"}))
    EmailMessage.add_member(:feedback_forwarding_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeedbackForwardingAddress', traits: {"smithy.api#documentation" => "<p>The email address to forward bounces and complaints to, if feedback forwarding is enabled.</p>"}))
    EmailMessage.add_member(:from_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress', traits: {"smithy.api#documentation" => "<p>The verified email address to send the email message from. The default value is the FromAddress specified for the email channel.</p>"}))
    EmailMessage.add_member(:raw_email, Smithy::Schema::Shapes::ShapeRef.new(shape: RawEmail, location_name: 'RawEmail', traits: {"smithy.api#documentation" => "<p>The email message, represented as a raw MIME message.</p>"}))
    EmailMessage.add_member(:reply_to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'ReplyToAddresses', traits: {"smithy.api#documentation" => "<p>The reply-to email address(es) for the email message. If a recipient replies to the email, each reply-to address receives the reply.</p>"}))
    EmailMessage.add_member(:simple_email, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmail, location_name: 'SimpleEmail', traits: {"smithy.api#documentation" => "<p>The email message, composed of a subject, a text part, and an HTML part.</p>"}))
    EmailMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the email message. You can override the default variables with individual address variables.</p>"}))
    EmailMessage.type = Types::EmailMessage
    EmailMessageActivity.add_member(:message_config, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyEmailMessage, location_name: 'MessageConfig', traits: {"smithy.api#documentation" => "<p>Specifies the sender address for an email message that's sent to participants in the journey.</p>"}))
    EmailMessageActivity.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after the message is sent.</p>"}))
    EmailMessageActivity.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the email message template to use for the message. If specified, this value must match the name of an existing message template.</p>"}))
    EmailMessageActivity.add_member(:template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the email template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"}))
    EmailMessageActivity.type = Types::EmailMessageActivity
    EmailTemplateRequest.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"}))
    EmailTemplateRequest.add_member(:html_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HtmlPart', traits: {"smithy.api#documentation" => "<p>The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>"}))
    EmailTemplateRequest.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>"}))
    EmailTemplateRequest.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line, or title, to use in email messages that are based on the message template.</p>"}))
    EmailTemplateRequest.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>The list of <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/templates-template-name-email.html#templates-template-name-email-model-messageheader\">MessageHeaders</a> for the email. You can have up to 15 Headers.</p>"}))
    EmailTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<note><p>As of <b>22-05-2023</b> tags has been deprecated for update operations. After this date any value in tags is not processed and an error code is not returned. To manage tags we recommend using either <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/tags-resource-arn.html\">Tags</a> in the <i>API Reference for Amazon Pinpoint</i>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html\">resourcegroupstaggingapi</a> commands in the <i>AWS Command Line Interface Documentation</i> or <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/resourcegroupstaggingapi/package-summary.html\">resourcegroupstaggingapi</a> in the <i>AWS SDK</i>.</p></note> <p>(Deprecated) A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    EmailTemplateRequest.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>A custom description of the message template.</p>"}))
    EmailTemplateRequest.add_member(:text_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextPart', traits: {"smithy.api#documentation" => "<p>The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>"}))
    EmailTemplateRequest.type = Types::EmailTemplateRequest
    EmailTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>"}))
    EmailTemplateResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was created.</p>", "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"}))
    EmailTemplateResponse.add_member(:html_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HtmlPart', traits: {"smithy.api#documentation" => "<p>The message body, in HTML format, that's used in email messages that are based on the message template.</p>"}))
    EmailTemplateResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was last modified.</p>", "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model that's used by the message template.</p>"}))
    EmailTemplateResponse.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line, or title, that's used in email messages that are based on the message template.</p>"}))
    EmailTemplateResponse.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>The list of <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/templates-template-name-email.html#templates-template-name-email-model-messageheader\">MessageHeaders</a> for the email. You can have up to 15 Headers.</p>"}))
    EmailTemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    EmailTemplateResponse.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the message template.</p>"}))
    EmailTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of channel that the message template is designed for. For an email template, this value is EMAIL.</p>", "smithy.api#required" => {}}))
    EmailTemplateResponse.add_member(:text_part, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextPart', traits: {"smithy.api#documentation" => "<p>The message body, in plain text format, that's used in email messages that are based on the message template.</p>"}))
    EmailTemplateResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"}))
    EmailTemplateResponse.type = Types::EmailTemplateResponse
    EndpointBatchItem.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.</p>"}))
    EndpointBatchItem.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>"}))
    EndpointBatchItem.add_member(:channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType', traits: {"smithy.api#documentation" => "<p>The channel to use when sending messages or push notifications to the endpoint.</p>"}))
    EndpointBatchItem.add_member(:demographic, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic', traits: {"smithy.api#documentation" => "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"}))
    EndpointBatchItem.add_member(:effective_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the endpoint was created or updated.</p>"}))
    EndpointBatchItem.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"}))
    EndpointBatchItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the endpoint in the context of the batch.</p>"}))
    EndpointBatchItem.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The geographic information for the endpoint.</p>"}))
    EndpointBatchItem.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"}))
    EndpointBatchItem.add_member(:opt_out, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut', traits: {"smithy.api#documentation" => "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"}))
    EndpointBatchItem.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request to create or update the endpoint.</p>"}))
    EndpointBatchItem.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that describe the user who's associated with the endpoint.</p>"}))
    EndpointBatchItem.type = Types::EndpointBatchItem
    EndpointBatchRequest.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointBatchItem, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array that defines the endpoints to create or update and, for each endpoint, the property values to set or change. An array can contain a maximum of 100 items.</p>", "smithy.api#required" => {}}))
    EndpointBatchRequest.type = Types::EndpointBatchRequest
    EndpointDemographic.add_member(:app_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppVersion', traits: {"smithy.api#documentation" => "<p>The version of the app that's associated with the endpoint.</p>"}))
    EndpointDemographic.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Locale', traits: {"smithy.api#documentation" => "<p>The locale of the endpoint, in the following format: the ISO 639-1 alpha-2 code, followed by an underscore (_), followed by an ISO 3166-1 alpha-2 value.</p>"}))
    EndpointDemographic.add_member(:make, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Make', traits: {"smithy.api#documentation" => "<p>The manufacturer of the endpoint device, such as apple or samsung.</p>"}))
    EndpointDemographic.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Model', traits: {"smithy.api#documentation" => "<p>The model name or number of the endpoint device, such as iPhone or SM-G900F.</p>"}))
    EndpointDemographic.add_member(:model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelVersion', traits: {"smithy.api#documentation" => "<p>The model version of the endpoint device.</p>"}))
    EndpointDemographic.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The platform of the endpoint device, such as ios.</p>"}))
    EndpointDemographic.add_member(:platform_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlatformVersion', traits: {"smithy.api#documentation" => "<p>The platform version of the endpoint device.</p>"}))
    EndpointDemographic.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>The time zone of the endpoint, specified as a tz database name value, such as America/Los_Angeles.</p>"}))
    EndpointDemographic.type = Types::EndpointDemographic
    EndpointItemResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The custom message that's returned in the response as a result of processing the endpoint data.</p>"}))
    EndpointItemResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>The status code that's returned in the response as a result of processing the endpoint data.</p>"}))
    EndpointItemResponse.type = Types::EndpointItemResponse
    EndpointLocation.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'City', traits: {"smithy.api#documentation" => "<p>The name of the city where the endpoint is located.</p>"}))
    EndpointLocation.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the endpoint is located. For example, US for the United States.</p>"}))
    EndpointLocation.add_member(:latitude, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Latitude', traits: {"smithy.api#documentation" => "<p>The latitude coordinate of the endpoint location, rounded to one decimal place.</p>"}))
    EndpointLocation.add_member(:longitude, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Longitude', traits: {"smithy.api#documentation" => "<p>The longitude coordinate of the endpoint location, rounded to one decimal place.</p>"}))
    EndpointLocation.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PostalCode', traits: {"smithy.api#documentation" => "<p>The postal or ZIP code for the area where the endpoint is located.</p>"}))
    EndpointLocation.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The name of the region where the endpoint is located. For locations in the United States, this value is the name of a state.</p>"}))
    EndpointLocation.type = Types::EndpointLocation
    EndpointMessageResult.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The endpoint address that the message was delivered to.</p>"}))
    EndpointMessageResult.add_member(:delivery_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: 'DeliveryStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The delivery status of the message. Possible values are:</p> <ul> <li><p>DUPLICATE - The endpoint address is a duplicate of another endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>OPT_OUT - The user who's associated with the endpoint has opted out of receiving messages from you. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>PERMANENT_FAILURE - An error occurred when delivering the message to the endpoint. Amazon Pinpoint won't attempt to send the message again.</p></li>    <li><p>SUCCESSFUL - The message was successfully delivered to the endpoint.</p></li> <li><p>TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>THROTTLED - Amazon Pinpoint throttled the operation to send the message to the endpoint.</p></li> <li><p>UNKNOWN_FAILURE - An unknown error occurred.</p></li></ul>", "smithy.api#required" => {}}))
    EndpointMessageResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message that was sent.</p>"}))
    EndpointMessageResult.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The downstream service status code for delivering the message.</p>", "smithy.api#required" => {}}))
    EndpointMessageResult.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for delivering the message.</p>"}))
    EndpointMessageResult.add_member(:updated_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdatedToken', traits: {"smithy.api#documentation" => "<p>For push notifications that are sent through the GCM channel, specifies whether the endpoint's device registration token was updated as part of delivering the message.</p>"}))
    EndpointMessageResult.type = Types::EndpointMessageResult
    EndpointRequest.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.</p>"}))
    EndpointRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>"}))
    EndpointRequest.add_member(:channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType', traits: {"smithy.api#documentation" => "<p>The channel to use when sending messages or push notifications to the endpoint.</p>"}))
    EndpointRequest.add_member(:demographic, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic', traits: {"smithy.api#documentation" => "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"}))
    EndpointRequest.add_member(:effective_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the endpoint is updated.</p>"}))
    EndpointRequest.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"}))
    EndpointRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The geographic information for the endpoint.</p>"}))
    EndpointRequest.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"}))
    EndpointRequest.add_member(:opt_out, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut', traits: {"smithy.api#documentation" => "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"}))
    EndpointRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the most recent request to update the endpoint.</p>"}))
    EndpointRequest.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that describe the user who's associated with the endpoint.</p>"}))
    EndpointRequest.type = Types::EndpointRequest
    EndpointResponse.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For example, the address for a push-notification channel is typically the token provided by a push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. The address for the SMS channel is a phone number in E.164 format, such as +12065550100. The address for the email channel is an email address.</p>"}))
    EndpointResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that's associated with the endpoint.</p>"}))
    EndpointResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments.</p>"}))
    EndpointResponse.add_member(:channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType', traits: {"smithy.api#documentation" => "<p>The channel that's used when sending messages or push notifications to the endpoint.</p>"}))
    EndpointResponse.add_member(:cohort_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CohortId', traits: {"smithy.api#documentation" => "<p>A number from 0-99 that represents the cohort that the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an application. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for campaigns.</p>"}))
    EndpointResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the endpoint was created.</p>"}))
    EndpointResponse.add_member(:demographic, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic', traits: {"smithy.api#documentation" => "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"}))
    EndpointResponse.add_member(:effective_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the endpoint was last updated.</p>"}))
    EndpointResponse.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether messages or push notifications are sent to the endpoint. Possible values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"}))
    EndpointResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier that you assigned to the endpoint. The identifier should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint identifiers that are associated with the application.</p>"}))
    EndpointResponse.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The geographic information for the endpoint.</p>"}))
    EndpointResponse.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"}))
    EndpointResponse.add_member(:opt_out, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut', traits: {"smithy.api#documentation" => "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"}))
    EndpointResponse.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the most recent request to update the endpoint.</p>"}))
    EndpointResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User', traits: {"smithy.api#documentation" => "<p>One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.</p>"}))
    EndpointResponse.type = Types::EndpointResponse
    EndpointSendConfiguration.add_member(:body_override, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BodyOverride', traits: {"smithy.api#documentation" => "<p>The body of the message. If specified, this value overrides the default message body.</p>"}))
    EndpointSendConfiguration.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>A map of custom attributes to attach to the message for the address. Attribute names are case sensitive.</p> <p>For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>"}))
    EndpointSendConfiguration.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the message. If specified, this value overrides all other values for the message.</p>"}))
    EndpointSendConfiguration.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>A map of the message variables to merge with the variables specified for the default message (DefaultMessage.Substitutions). The variables specified in this map take precedence over all other variables.</p>"}))
    EndpointSendConfiguration.add_member(:title_override, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TitleOverride', traits: {"smithy.api#documentation" => "<p>The title or subject line of the message. If specified, this value overrides the default message title or subject line.</p>"}))
    EndpointSendConfiguration.type = Types::EndpointSendConfiguration
    EndpointUser.add_member(:user_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'UserAttributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that describe the user by associating a name with an array of values. For example, the value of an attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>"}))
    EndpointUser.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>"}))
    EndpointUser.type = Types::EndpointUser
    EndpointsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEndpointResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each endpoint that's associated with the user ID.</p>", "smithy.api#required" => {}}))
    EndpointsResponse.type = Types::EndpointsResponse
    Event.add_member(:app_package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppPackageName', traits: {"smithy.api#documentation" => "<p>The package name of the app that's recording the event.</p>"}))
    Event.add_member(:app_title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppTitle', traits: {"smithy.api#documentation" => "<p>The title of the app that's recording the event.</p>"}))
    Event.add_member(:app_version_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppVersionCode', traits: {"smithy.api#documentation" => "<p>The version number of the app that's recording the event.</p>"}))
    Event.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that are associated with the event.</p>"}))
    Event.add_member(:client_sdk_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientSdkVersion', traits: {"smithy.api#documentation" => "<p>The version of the SDK that's running on the client device.</p>"}))
    Event.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the event.</p>", "smithy.api#required" => {}}))
    Event.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>One or more custom metrics that are associated with the event.</p>"}))
    Event.add_member(:sdk_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SdkName', traits: {"smithy.api#documentation" => "<p>The name of the SDK that's being used to record the event.</p>"}))
    Event.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: Session, location_name: 'Session', traits: {"smithy.api#documentation" => "<p>Information about the session in which the event occurred.</p>"}))
    Event.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timestamp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the event occurred.</p>", "smithy.api#required" => {}}))
    Event.type = Types::Event
    EventCondition.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>The dimensions for the event filter to use for the activity.</p>"}))
    EventCondition.add_member(:message_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageActivity', traits: {"smithy.api#documentation" => "<p>The message identifier (message_id) for the message to use when determining whether message events meet the condition.</p>"}))
    EventCondition.type = Types::EventCondition
    EventDimensions.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that your application reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create an event filter.</p>"}))
    EventDimensions.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'EventType', traits: {"smithy.api#documentation" => "<p>The name of the event that causes the campaign to be sent or the journey activity to be performed. This can be a standard event that Amazon Pinpoint generates, such as _email.delivered. For campaigns, this can also be a custom event that's specific to your application. For information about standard events, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/event-streams.html\">Streaming Amazon Pinpoint Events</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p>"}))
    EventDimensions.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMetricDimension, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>One or more custom metrics that your application reports to Amazon Pinpoint. You can use these metrics as selection criteria when you create an event filter.</p>"}))
    EventDimensions.type = Types::EventDimensions
    EventFilter.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDimensions, location_name: 'Dimensions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The dimensions for the event filter to use for the campaign or the journey activity.</p>", "smithy.api#required" => {}}))
    EventFilter.add_member(:filter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterType, location_name: 'FilterType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of event that causes the campaign to be sent or the journey activity to be performed. Valid values are: SYSTEM, sends the campaign or performs the activity when a system event occurs; and, ENDPOINT, sends the campaign or performs the activity when an endpoint event (<link  linkend=\"apps-application-id-events\">Events resource</link>) occurs.</p>", "smithy.api#required" => {}}))
    EventFilter.type = Types::EventFilter
    EventItemResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A custom message that's returned in the response as a result of processing the event.</p>"}))
    EventItemResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>The status code that's returned in the response as a result of processing the event. Possible values are: 202, for events that were accepted; and, 400, for events that weren't valid.</p>"}))
    EventItemResponse.type = Types::EventItemResponse
    EventStartCondition.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilter, location_name: 'EventFilter'))
    EventStartCondition.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId'))
    EventStartCondition.type = Types::EventStartCondition
    EventStream.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application to publish event data for.</p>", "smithy.api#required" => {}}))
    EventStream.add_member(:destination_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationStreamArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or Amazon Kinesis Data Firehose delivery stream to publish event data to.</p> <p>For a Kinesis data stream, the ARN format is: arn:aws:kinesis:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:stream/<replaceable>stream_name</replaceable>\n               </p> <p>For a Kinesis Data Firehose delivery stream, the ARN format is: arn:aws:firehose:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:deliverystream/<replaceable>stream_name</replaceable>\n               </p>", "smithy.api#required" => {}}))
    EventStream.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId', traits: {"smithy.api#documentation" => "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when publishing event data, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>"}))
    EventStream.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the event stream was last modified.</p>"}))
    EventStream.add_member(:last_updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdatedBy', traits: {"smithy.api#documentation" => "<p>The IAM user who last modified the event stream.</p>"}))
    EventStream.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to publish event data to the stream in your AWS account.</p>", "smithy.api#required" => {}}))
    EventStream.type = Types::EventStream
    EventsBatch.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicEndpoint, location_name: 'Endpoint', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A set of properties and attributes that are associated with the endpoint.</p>", "smithy.api#required" => {}}))
    EventsBatch.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEvent, location_name: 'Events', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A set of properties that are associated with the event.</p>", "smithy.api#required" => {}}))
    EventsBatch.type = Types::EventsBatch
    EventsRequest.add_member(:batch_item, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEventsBatch, location_name: 'BatchItem', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The batch of events to process. For each item in a batch, the endpoint ID acts as a key that has an EventsBatch object as its value.</p>", "smithy.api#required" => {}}))
    EventsRequest.type = Types::EventsRequest
    EventsResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfItemResponse, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>A map that contains a multipart response for each endpoint. For each item in this object, the endpoint ID is the key and the item response is the value. If no item response exists, the value can also be one of the following: 202, the request was processed successfully; or 400, the payload wasn't valid or required fields were missing.</p>"}))
    EventsResponse.type = Types::EventsResponse
    ExportJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location where you want to export endpoint definitions to.</p>", "smithy.api#required" => {}}))
    ExportJobRequest.add_member(:s3_url_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3UrlPrefix', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The URL of the location in an Amazon Simple Storage Service (Amazon S3) bucket where you want to export endpoint definitions to. This location is typically a folder that contains multiple files. The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/.</p>", "smithy.api#required" => {}}))
    ExportJobRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The identifier for the segment to export endpoint definitions from. If you don't specify this value, Amazon Pinpoint exports definitions for all the endpoints that are associated with the application.</p>"}))
    ExportJobRequest.add_member(:segment_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion', traits: {"smithy.api#documentation" => "<p>The version of the segment to export endpoint definitions from, if specified.</p>"}))
    ExportJobRequest.type = Types::ExportJobRequest
    ExportJobResource.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorized Amazon Pinpoint to access the Amazon S3 location where the endpoint definitions were exported to.</p>", "smithy.api#required" => {}}))
    ExportJobResource.add_member(:s3_url_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3UrlPrefix', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The URL of the location in an Amazon Simple Storage Service (Amazon S3) bucket where the endpoint definitions were exported to. This location is typically a folder that contains multiple files. The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/.</p>", "smithy.api#required" => {}}))
    ExportJobResource.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The identifier for the segment that the endpoint definitions were exported from. If this value isn't present, Amazon Pinpoint exported definitions for all the endpoints that are associated with the application.</p>"}))
    ExportJobResource.add_member(:segment_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion', traits: {"smithy.api#documentation" => "<p>The version of the segment that the endpoint definitions were exported from.</p>"}))
    ExportJobResource.type = Types::ExportJobResource
    ExportJobResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that's associated with the export job.</p>", "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:completed_pieces, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CompletedPieces', traits: {"smithy.api#documentation" => "<p>The number of pieces that were processed successfully (completed) by the export job, as of the time of the request.</p>"}))
    ExportJobResponse.add_member(:completion_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompletionDate', traits: {"smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the export job was completed.</p>"}))
    ExportJobResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the export job was created.</p>", "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResource, location_name: 'Definition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The resource settings that apply to the export job.</p>", "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:failed_pieces, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedPieces', traits: {"smithy.api#documentation" => "<p>The number of pieces that weren't processed successfully (failed) by the export job, as of the time of the request.</p>"}))
    ExportJobResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Failures', traits: {"smithy.api#documentation" => "<p>An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the export job, if any.</p>"}))
    ExportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the export job.</p>", "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The status of the export job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.</p>", "smithy.api#required" => {}}))
    ExportJobResponse.add_member(:total_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalFailures', traits: {"smithy.api#documentation" => "<p>The total number of endpoint definitions that weren't processed successfully (failed) by the export job, typically because an error, such as a syntax error, occurred.</p>"}))
    ExportJobResponse.add_member(:total_pieces, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalPieces', traits: {"smithy.api#documentation" => "<p>The total number of pieces that must be processed to complete the export job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the export job.</p>"}))
    ExportJobResponse.add_member(:total_processed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalProcessed', traits: {"smithy.api#documentation" => "<p>The total number of endpoint definitions that were processed by the export job.</p>"}))
    ExportJobResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The job type. This value is EXPORT for export jobs.</p>", "smithy.api#required" => {}}))
    ExportJobResponse.type = Types::ExportJobResponse
    ExportJobsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfExportJobResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each export job that's associated with the application (Export Jobs resource) or segment (Segment Export Jobs resource).</p>", "smithy.api#required" => {}}))
    ExportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    ExportJobsResponse.type = Types::ExportJobsResponse
    FilterType.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    FilterType.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDPOINT', traits: {"smithy.api#enumValue" => "ENDPOINT"}))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    ForbiddenException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    ForbiddenException.type = Types::ForbiddenException
    Format.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    Format.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    Frequency.add_member(:once, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONCE', traits: {"smithy.api#enumValue" => "ONCE"}))
    Frequency.add_member(:hourly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURLY', traits: {"smithy.api#enumValue" => "HOURLY"}))
    Frequency.add_member(:daily, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    Frequency.add_member(:weekly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "WEEKLY"}))
    Frequency.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    Frequency.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    Frequency.add_member(:in_app_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_APP_EVENT', traits: {"smithy.api#enumValue" => "IN_APP_EVENT"}))
    GCMChannelRequest.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiKey', traits: {"smithy.api#documentation" => "<p>The Web API Key, also referred to as an <i>API_KEY</i> or <i>server key</i>, that you received from Google to communicate with Google services.</p>"}))
    GCMChannelRequest.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method used for GCM. Values are either \"TOKEN\" or \"KEY\". Defaults to \"KEY\".</p>"}))
    GCMChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the GCM channel for the application.</p>"}))
    GCMChannelRequest.add_member(:service_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceJson', traits: {"smithy.api#documentation" => "<p>The contents of the JSON file provided by Google during registration in order to generate an access token for authentication. For more information see <a href=\"https://firebase.google.com/docs/cloud-messaging/migrate-v1\">Migrate from legacy FCM APIs to HTTP v1</a>.</p>"}))
    GCMChannelRequest.type = Types::GCMChannelRequest
    GCMChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the GCM channel applies to.</p>"}))
    GCMChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time when the GCM channel was enabled.</p>"}))
    GCMChannelResponse.add_member(:credential, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Credential', traits: {"smithy.api#documentation" => "<p>The Web API Key, also referred to as an <i>API_KEY</i> or <i>server key</i>, that you received from Google to communicate with Google services.</p>"}))
    GCMChannelResponse.add_member(:default_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The default authentication method used for GCM. Values are either \"TOKEN\" or \"KEY\". Defaults to \"KEY\".</p>"}))
    GCMChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the GCM channel is enabled for the application.</p>"}))
    GCMChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    GCMChannelResponse.add_member(:has_fcm_service_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasFcmServiceCredentials', traits: {"smithy.api#documentation" => "<p>Returns true if the JSON file provided by Google during registration process was used in the <b>ServiceJson</b> field of the request.</p>"}))
    GCMChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the GCM channel. This property is retained only for backward compatibility.</p>"}))
    GCMChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the GCM channel is archived.</p>"}))
    GCMChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the GCM channel.</p>"}))
    GCMChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the GCM channel was last modified.</p>"}))
    GCMChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the GCM channel, this value is GCM.</p>", "smithy.api#required" => {}}))
    GCMChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the GCM channel.</p>"}))
    GCMChannelResponse.type = Types::GCMChannelResponse
    GCMMessage.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    GCMMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the notification message.</p>"}))
    GCMMessage.add_member(:collapse_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CollapseKey', traits: {"smithy.api#documentation" => "<p>An arbitrary string that identifies a group of messages that can be collapsed to ensure that only the last message is sent when delivery can resume. This helps avoid sending too many instances of the same messages when the recipient's device comes online again or becomes active.</p> <p>Amazon Pinpoint specifies this value in the Firebase Cloud Messaging (FCM) collapse_key parameter when it sends the notification message to FCM.</p>"}))
    GCMMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"}))
    GCMMessage.add_member(:icon_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IconReference', traits: {"smithy.api#documentation" => "<p>The icon image name of the asset saved in your app.</p>"}))
    GCMMessage.add_member(:image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the large icon image to display in the content view of the push notification.</p>"}))
    GCMMessage.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image to display in the push notification.</p>"}))
    GCMMessage.add_member(:preferred_authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAuthenticationMethod', traits: {"smithy.api#documentation" => "<p>The preferred authentication method, with valid values \"KEY\" or \"TOKEN\". If a value isn't provided then the <b>DefaultAuthenticationMethod</b> is used.</p>"}))
    GCMMessage.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>para>normal – The notification might be delayed. Delivery is optimized for battery usage on the recipient's device. Use this value unless immediate delivery is required.</p>/listitem> <li><p>high – The notification is sent immediately and might wake a sleeping device.</p></li>/para> <p>Amazon Pinpoint specifies this value in the FCM priority parameter when it sends the notification message to FCM.</p> <p>The equivalent values for Apple Push Notification service (APNs) are 5, for normal, and 10, for high. If you specify an APNs value for this property, Amazon Pinpoint accepts and converts the value to the corresponding FCM value.</p>"}))
    GCMMessage.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"}))
    GCMMessage.add_member(:restricted_package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RestrictedPackageName', traits: {"smithy.api#documentation" => "<p>The package name of the application where registration tokens must match in order for the recipient to receive the message.</p>"}))
    GCMMessage.add_member(:silent_push, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush', traits: {"smithy.api#documentation" => "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>"}))
    GCMMessage.add_member(:small_image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmallImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>"}))
    GCMMessage.add_member(:sound, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Sound', traits: {"smithy.api#documentation" => "<p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"}))
    GCMMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"}))
    GCMMessage.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, that FCM should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If you don't specify this value, FCM defaults to the maximum value, which is 2,419,200 seconds (28 days).</p> <p>Amazon Pinpoint specifies this value in the FCM time_to_live parameter when it sends the notification message to FCM.</p>"}))
    GCMMessage.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to display above the notification message on the recipient's device.</p>"}))
    GCMMessage.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"}))
    GCMMessage.type = Types::GCMMessage
    GPSCoordinates.add_member(:latitude, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Latitude', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The latitude coordinate of the location.</p>", "smithy.api#required" => {}}))
    GPSCoordinates.add_member(:longitude, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Longitude', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The longitude coordinate of the location.</p>", "smithy.api#required" => {}}))
    GPSCoordinates.type = Types::GPSCoordinates
    GPSPointDimension.add_member(:coordinates, Smithy::Schema::Shapes::ShapeRef.new(shape: GPSCoordinates, location_name: 'Coordinates', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The GPS coordinates to measure distance from.</p>", "smithy.api#required" => {}}))
    GPSPointDimension.add_member(:range_in_kilometers, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RangeInKilometers', traits: {"smithy.api#documentation" => "<p>The range, in kilometers, from the GPS coordinates.</p>"}))
    GPSPointDimension.type = Types::GPSPointDimension
    GetAdmChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAdmChannelRequest.type = Types::GetAdmChannelRequest
    GetAdmChannelResponse.add_member(:adm_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelResponse, location_name: 'ADMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetAdmChannelResponse[:http_payload] = :adm_channel_response
    GetAdmChannelResponse[:http_payload_member] = GetAdmChannelResponse.member(:adm_channel_response)
    GetAdmChannelResponse.type = Types::GetAdmChannelResponse
    GetApnsChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsChannelRequest.type = Types::GetApnsChannelRequest
    GetApnsChannelResponse.add_member(:apns_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelResponse, location_name: 'APNSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsChannelResponse[:http_payload] = :apns_channel_response
    GetApnsChannelResponse[:http_payload_member] = GetApnsChannelResponse.member(:apns_channel_response)
    GetApnsChannelResponse.type = Types::GetApnsChannelResponse
    GetApnsSandboxChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsSandboxChannelRequest.type = Types::GetApnsSandboxChannelRequest
    GetApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, location_name: 'APNSSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsSandboxChannelResponse[:http_payload] = :apns_sandbox_channel_response
    GetApnsSandboxChannelResponse[:http_payload_member] = GetApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)
    GetApnsSandboxChannelResponse.type = Types::GetApnsSandboxChannelResponse
    GetApnsVoipChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsVoipChannelRequest.type = Types::GetApnsVoipChannelRequest
    GetApnsVoipChannelResponse.add_member(:apns_voip_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, location_name: 'APNSVoipChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsVoipChannelResponse[:http_payload] = :apns_voip_channel_response
    GetApnsVoipChannelResponse[:http_payload_member] = GetApnsVoipChannelResponse.member(:apns_voip_channel_response)
    GetApnsVoipChannelResponse.type = Types::GetApnsVoipChannelResponse
    GetApnsVoipSandboxChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApnsVoipSandboxChannelRequest.type = Types::GetApnsVoipSandboxChannelRequest
    GetApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, location_name: 'APNSVoipSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApnsVoipSandboxChannelResponse[:http_payload] = :apns_voip_sandbox_channel_response
    GetApnsVoipSandboxChannelResponse[:http_payload_member] = GetApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)
    GetApnsVoipSandboxChannelResponse.type = Types::GetApnsVoipSandboxChannelResponse
    GetAppRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppRequest.type = Types::GetAppRequest
    GetAppResponse.add_member(:application_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse, location_name: 'ApplicationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetAppResponse[:http_payload] = :application_response
    GetAppResponse[:http_payload_member] = GetAppResponse.member(:application_response)
    GetAppResponse.type = Types::GetAppResponse
    GetApplicationDateRangeKpiRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationDateRangeKpiRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>", "smithy.api#httpQuery" => "end-time"}))
    GetApplicationDateRangeKpiRequest.add_member(:kpi_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#documentation" => "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationDateRangeKpiRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    GetApplicationDateRangeKpiRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetApplicationDateRangeKpiRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>", "smithy.api#httpQuery" => "start-time"}))
    GetApplicationDateRangeKpiRequest.type = Types::GetApplicationDateRangeKpiRequest
    GetApplicationDateRangeKpiResponse.add_member(:application_date_range_kpi_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDateRangeKpiResponse, location_name: 'ApplicationDateRangeKpiResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApplicationDateRangeKpiResponse[:http_payload] = :application_date_range_kpi_response
    GetApplicationDateRangeKpiResponse[:http_payload_member] = GetApplicationDateRangeKpiResponse.member(:application_date_range_kpi_response)
    GetApplicationDateRangeKpiResponse.type = Types::GetApplicationDateRangeKpiResponse
    GetApplicationSettingsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationSettingsRequest.type = Types::GetApplicationSettingsRequest
    GetApplicationSettingsResponse.add_member(:application_settings_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsResource, location_name: 'ApplicationSettingsResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetApplicationSettingsResponse[:http_payload] = :application_settings_resource
    GetApplicationSettingsResponse[:http_payload_member] = GetApplicationSettingsResponse.member(:application_settings_resource)
    GetApplicationSettingsResponse.type = Types::GetApplicationSettingsResponse
    GetAppsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetAppsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetAppsRequest.type = Types::GetAppsRequest
    GetAppsResponse.add_member(:applications_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationsResponse, location_name: 'ApplicationsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetAppsResponse[:http_payload] = :applications_response
    GetAppsResponse[:http_payload_member] = GetAppsResponse.member(:applications_response)
    GetAppsResponse.type = Types::GetAppsResponse
    GetBaiduChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBaiduChannelRequest.type = Types::GetBaiduChannelRequest
    GetBaiduChannelResponse.add_member(:baidu_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelResponse, location_name: 'BaiduChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetBaiduChannelResponse[:http_payload] = :baidu_channel_response
    GetBaiduChannelResponse[:http_payload_member] = GetBaiduChannelResponse.member(:baidu_channel_response)
    GetBaiduChannelResponse.type = Types::GetBaiduChannelResponse
    GetCampaignActivitiesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignActivitiesRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignActivitiesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetCampaignActivitiesRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetCampaignActivitiesRequest.type = Types::GetCampaignActivitiesRequest
    GetCampaignActivitiesResponse.add_member(:activities_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivitiesResponse, location_name: 'ActivitiesResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignActivitiesResponse[:http_payload] = :activities_response
    GetCampaignActivitiesResponse[:http_payload_member] = GetCampaignActivitiesResponse.member(:activities_response)
    GetCampaignActivitiesResponse.type = Types::GetCampaignActivitiesResponse
    GetCampaignDateRangeKpiRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>", "smithy.api#httpQuery" => "end-time"}))
    GetCampaignDateRangeKpiRequest.add_member(:kpi_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#documentation" => "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    GetCampaignDateRangeKpiRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetCampaignDateRangeKpiRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>", "smithy.api#httpQuery" => "start-time"}))
    GetCampaignDateRangeKpiRequest.type = Types::GetCampaignDateRangeKpiRequest
    GetCampaignDateRangeKpiResponse.add_member(:campaign_date_range_kpi_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignDateRangeKpiResponse, location_name: 'CampaignDateRangeKpiResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignDateRangeKpiResponse[:http_payload] = :campaign_date_range_kpi_response
    GetCampaignDateRangeKpiResponse[:http_payload_member] = GetCampaignDateRangeKpiResponse.member(:campaign_date_range_kpi_response)
    GetCampaignDateRangeKpiResponse.type = Types::GetCampaignDateRangeKpiResponse
    GetCampaignRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignRequest.type = Types::GetCampaignRequest
    GetCampaignResponse.add_member(:campaign_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignResponse[:http_payload] = :campaign_response
    GetCampaignResponse[:http_payload_member] = GetCampaignResponse.member(:campaign_response)
    GetCampaignResponse.type = Types::GetCampaignResponse
    GetCampaignVersionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique version number (Version property) for the campaign version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionRequest.type = Types::GetCampaignVersionRequest
    GetCampaignVersionResponse.add_member(:campaign_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionResponse[:http_payload] = :campaign_response
    GetCampaignVersionResponse[:http_payload_member] = GetCampaignVersionResponse.member(:campaign_response)
    GetCampaignVersionResponse.type = Types::GetCampaignVersionResponse
    GetCampaignVersionsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionsRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetCampaignVersionsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetCampaignVersionsRequest.type = Types::GetCampaignVersionsRequest
    GetCampaignVersionsResponse.add_member(:campaigns_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignsResponse, location_name: 'CampaignsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignVersionsResponse[:http_payload] = :campaigns_response
    GetCampaignVersionsResponse[:http_payload_member] = GetCampaignVersionsResponse.member(:campaigns_response)
    GetCampaignVersionsResponse.type = Types::GetCampaignVersionsResponse
    GetCampaignsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetCampaignsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetCampaignsRequest.type = Types::GetCampaignsRequest
    GetCampaignsResponse.add_member(:campaigns_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignsResponse, location_name: 'CampaignsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetCampaignsResponse[:http_payload] = :campaigns_response
    GetCampaignsResponse[:http_payload_member] = GetCampaignsResponse.member(:campaigns_response)
    GetCampaignsResponse.type = Types::GetCampaignsResponse
    GetChannelsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelsRequest.type = Types::GetChannelsRequest
    GetChannelsResponse.add_member(:channels_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelsResponse, location_name: 'ChannelsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetChannelsResponse[:http_payload] = :channels_response
    GetChannelsResponse[:http_payload_member] = GetChannelsResponse.member(:channels_response)
    GetChannelsResponse.type = Types::GetChannelsResponse
    GetEmailChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailChannelRequest.type = Types::GetEmailChannelRequest
    GetEmailChannelResponse.add_member(:email_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelResponse, location_name: 'EmailChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEmailChannelResponse[:http_payload] = :email_channel_response
    GetEmailChannelResponse[:http_payload_member] = GetEmailChannelResponse.member(:email_channel_response)
    GetEmailChannelResponse.type = Types::GetEmailChannelResponse
    GetEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    GetEmailTemplateRequest.type = Types::GetEmailTemplateRequest
    GetEmailTemplateResponse.add_member(:email_template_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateResponse, location_name: 'EmailTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEmailTemplateResponse[:http_payload] = :email_template_response
    GetEmailTemplateResponse[:http_payload_member] = GetEmailTemplateResponse.member(:email_template_response)
    GetEmailTemplateResponse.type = Types::GetEmailTemplateResponse
    GetEndpointRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEndpointRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The case insensitive unique identifier for the endpoint. The identifier can't contain <code>$</code>, <code>{</code> or <code>}</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEndpointRequest.type = Types::GetEndpointRequest
    GetEndpointResponse.add_member(:endpoint_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointResponse, location_name: 'EndpointResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEndpointResponse[:http_payload] = :endpoint_response
    GetEndpointResponse[:http_payload_member] = GetEndpointResponse.member(:endpoint_response)
    GetEndpointResponse.type = Types::GetEndpointResponse
    GetEventStreamRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventStreamRequest.type = Types::GetEventStreamRequest
    GetEventStreamResponse.add_member(:event_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: EventStream, location_name: 'EventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetEventStreamResponse[:http_payload] = :event_stream
    GetEventStreamResponse[:http_payload_member] = GetEventStreamResponse.member(:event_stream)
    GetEventStreamResponse.type = Types::GetEventStreamResponse
    GetExportJobRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobRequest.type = Types::GetExportJobRequest
    GetExportJobResponse.add_member(:export_job_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResponse, location_name: 'ExportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetExportJobResponse[:http_payload] = :export_job_response
    GetExportJobResponse[:http_payload_member] = GetExportJobResponse.member(:export_job_response)
    GetExportJobResponse.type = Types::GetExportJobResponse
    GetExportJobsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetExportJobsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetExportJobsRequest.type = Types::GetExportJobsRequest
    GetExportJobsResponse.add_member(:export_jobs_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobsResponse, location_name: 'ExportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetExportJobsResponse[:http_payload] = :export_jobs_response
    GetExportJobsResponse[:http_payload_member] = GetExportJobsResponse.member(:export_jobs_response)
    GetExportJobsResponse.type = Types::GetExportJobsResponse
    GetGcmChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGcmChannelRequest.type = Types::GetGcmChannelRequest
    GetGcmChannelResponse.add_member(:gcm_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelResponse, location_name: 'GCMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetGcmChannelResponse[:http_payload] = :gcm_channel_response
    GetGcmChannelResponse[:http_payload_member] = GetGcmChannelResponse.member(:gcm_channel_response)
    GetGcmChannelResponse.type = Types::GetGcmChannelResponse
    GetImportJobRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:import_job_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResponse, location_name: 'ImportJobResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImportJobResponse[:http_payload] = :import_job_response
    GetImportJobResponse[:http_payload_member] = GetImportJobResponse.member(:import_job_response)
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetImportJobsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetImportJobsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetImportJobsRequest.type = Types::GetImportJobsRequest
    GetImportJobsResponse.add_member(:import_jobs_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobsResponse, location_name: 'ImportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetImportJobsResponse[:http_payload] = :import_jobs_response
    GetImportJobsResponse[:http_payload_member] = GetImportJobsResponse.member(:import_jobs_response)
    GetImportJobsResponse.type = Types::GetImportJobsResponse
    GetInAppMessagesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInAppMessagesRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the endpoint.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInAppMessagesRequest.type = Types::GetInAppMessagesRequest
    GetInAppMessagesResponse.add_member(:in_app_messages_response, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessagesResponse, location_name: 'InAppMessagesResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetInAppMessagesResponse[:http_payload] = :in_app_messages_response
    GetInAppMessagesResponse[:http_payload_member] = GetInAppMessagesResponse.member(:in_app_messages_response)
    GetInAppMessagesResponse.type = Types::GetInAppMessagesResponse
    GetInAppTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInAppTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    GetInAppTemplateRequest.type = Types::GetInAppTemplateRequest
    GetInAppTemplateResponse.add_member(:in_app_template_response, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTemplateResponse, location_name: 'InAppTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetInAppTemplateResponse[:http_payload] = :in_app_template_response
    GetInAppTemplateResponse[:http_payload_member] = GetInAppTemplateResponse.member(:in_app_template_response)
    GetInAppTemplateResponse.type = Types::GetInAppTemplateResponse
    GetJourneyDateRangeKpiRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>", "smithy.api#httpQuery" => "end-time"}))
    GetJourneyDateRangeKpiRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiRequest.add_member(:kpi_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#documentation" => "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    GetJourneyDateRangeKpiRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetJourneyDateRangeKpiRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>", "smithy.api#httpQuery" => "start-time"}))
    GetJourneyDateRangeKpiRequest.type = Types::GetJourneyDateRangeKpiRequest
    GetJourneyDateRangeKpiResponse.add_member(:journey_date_range_kpi_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyDateRangeKpiResponse, location_name: 'JourneyDateRangeKpiResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyDateRangeKpiResponse[:http_payload] = :journey_date_range_kpi_response
    GetJourneyDateRangeKpiResponse[:http_payload_member] = GetJourneyDateRangeKpiResponse.member(:journey_date_range_kpi_response)
    GetJourneyDateRangeKpiResponse.type = Types::GetJourneyDateRangeKpiResponse
    GetJourneyExecutionActivityMetricsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:journey_activity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey activity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    GetJourneyExecutionActivityMetricsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetJourneyExecutionActivityMetricsRequest.type = Types::GetJourneyExecutionActivityMetricsRequest
    GetJourneyExecutionActivityMetricsResponse.add_member(:journey_execution_activity_metrics_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyExecutionActivityMetricsResponse, location_name: 'JourneyExecutionActivityMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionActivityMetricsResponse[:http_payload] = :journey_execution_activity_metrics_response
    GetJourneyExecutionActivityMetricsResponse[:http_payload_member] = GetJourneyExecutionActivityMetricsResponse.member(:journey_execution_activity_metrics_response)
    GetJourneyExecutionActivityMetricsResponse.type = Types::GetJourneyExecutionActivityMetricsResponse
    GetJourneyExecutionMetricsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionMetricsRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionMetricsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    GetJourneyExecutionMetricsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetJourneyExecutionMetricsRequest.type = Types::GetJourneyExecutionMetricsRequest
    GetJourneyExecutionMetricsResponse.add_member(:journey_execution_metrics_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyExecutionMetricsResponse, location_name: 'JourneyExecutionMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyExecutionMetricsResponse[:http_payload] = :journey_execution_metrics_response
    GetJourneyExecutionMetricsResponse[:http_payload_member] = GetJourneyExecutionMetricsResponse.member(:journey_execution_metrics_response)
    GetJourneyExecutionMetricsResponse.type = Types::GetJourneyExecutionMetricsResponse
    GetJourneyRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRequest.type = Types::GetJourneyRequest
    GetJourneyResponse.add_member(:journey_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyResponse[:http_payload] = :journey_response
    GetJourneyResponse[:http_payload_member] = GetJourneyResponse.member(:journey_response)
    GetJourneyResponse.type = Types::GetJourneyResponse
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:journey_activity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey activity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetJourneyRunExecutionActivityMetricsRequest.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsRequest.type = Types::GetJourneyRunExecutionActivityMetricsRequest
    GetJourneyRunExecutionActivityMetricsResponse.add_member(:journey_run_execution_activity_metrics_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunExecutionActivityMetricsResponse, location_name: 'JourneyRunExecutionActivityMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionActivityMetricsResponse[:http_payload] = :journey_run_execution_activity_metrics_response
    GetJourneyRunExecutionActivityMetricsResponse[:http_payload_member] = GetJourneyRunExecutionActivityMetricsResponse.member(:journey_run_execution_activity_metrics_response)
    GetJourneyRunExecutionActivityMetricsResponse.type = Types::GetJourneyRunExecutionActivityMetricsResponse
    GetJourneyRunExecutionMetricsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code/> string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    GetJourneyRunExecutionMetricsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetJourneyRunExecutionMetricsRequest.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsRequest.type = Types::GetJourneyRunExecutionMetricsRequest
    GetJourneyRunExecutionMetricsResponse.add_member(:journey_run_execution_metrics_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunExecutionMetricsResponse, location_name: 'JourneyRunExecutionMetricsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyRunExecutionMetricsResponse[:http_payload] = :journey_run_execution_metrics_response
    GetJourneyRunExecutionMetricsResponse[:http_payload_member] = GetJourneyRunExecutionMetricsResponse.member(:journey_run_execution_metrics_response)
    GetJourneyRunExecutionMetricsResponse.type = Types::GetJourneyRunExecutionMetricsResponse
    GetJourneyRunsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunsRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJourneyRunsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetJourneyRunsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetJourneyRunsRequest.type = Types::GetJourneyRunsRequest
    GetJourneyRunsResponse.add_member(:journey_runs_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunsResponse, location_name: 'JourneyRunsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetJourneyRunsResponse[:http_payload] = :journey_runs_response
    GetJourneyRunsResponse[:http_payload_member] = GetJourneyRunsResponse.member(:journey_runs_response)
    GetJourneyRunsResponse.type = Types::GetJourneyRunsResponse
    GetPushTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPushTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    GetPushTemplateRequest.type = Types::GetPushTemplateRequest
    GetPushTemplateResponse.add_member(:push_notification_template_response, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationTemplateResponse, location_name: 'PushNotificationTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetPushTemplateResponse[:http_payload] = :push_notification_template_response
    GetPushTemplateResponse[:http_payload_member] = GetPushTemplateResponse.member(:push_notification_template_response)
    GetPushTemplateResponse.type = Types::GetPushTemplateResponse
    GetRecommenderConfigurationRequest.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderConfigurationRequest.type = Types::GetRecommenderConfigurationRequest
    GetRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    GetRecommenderConfigurationResponse[:http_payload_member] = GetRecommenderConfigurationResponse.member(:recommender_configuration_response)
    GetRecommenderConfigurationResponse.type = Types::GetRecommenderConfigurationResponse
    GetRecommenderConfigurationsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetRecommenderConfigurationsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetRecommenderConfigurationsRequest.type = Types::GetRecommenderConfigurationsRequest
    GetRecommenderConfigurationsResponse.add_member(:list_recommender_configurations_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommenderConfigurationsResponse, location_name: 'ListRecommenderConfigurationsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetRecommenderConfigurationsResponse[:http_payload] = :list_recommender_configurations_response
    GetRecommenderConfigurationsResponse[:http_payload_member] = GetRecommenderConfigurationsResponse.member(:list_recommender_configurations_response)
    GetRecommenderConfigurationsResponse.type = Types::GetRecommenderConfigurationsResponse
    GetSegmentExportJobsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentExportJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetSegmentExportJobsRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentExportJobsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetSegmentExportJobsRequest.type = Types::GetSegmentExportJobsRequest
    GetSegmentExportJobsResponse.add_member(:export_jobs_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobsResponse, location_name: 'ExportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentExportJobsResponse[:http_payload] = :export_jobs_response
    GetSegmentExportJobsResponse[:http_payload_member] = GetSegmentExportJobsResponse.member(:export_jobs_response)
    GetSegmentExportJobsResponse.type = Types::GetSegmentExportJobsResponse
    GetSegmentImportJobsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentImportJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetSegmentImportJobsRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentImportJobsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetSegmentImportJobsRequest.type = Types::GetSegmentImportJobsRequest
    GetSegmentImportJobsResponse.add_member(:import_jobs_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobsResponse, location_name: 'ImportJobsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentImportJobsResponse[:http_payload] = :import_jobs_response
    GetSegmentImportJobsResponse[:http_payload_member] = GetSegmentImportJobsResponse.member(:import_jobs_response)
    GetSegmentImportJobsResponse.type = Types::GetSegmentImportJobsResponse
    GetSegmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentRequest.type = Types::GetSegmentRequest
    GetSegmentResponse.add_member(:segment_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentResponse[:http_payload] = :segment_response
    GetSegmentResponse[:http_payload_member] = GetSegmentResponse.member(:segment_response)
    GetSegmentResponse.type = Types::GetSegmentResponse
    GetSegmentVersionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique version number (Version property) for the campaign version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionRequest.type = Types::GetSegmentVersionRequest
    GetSegmentVersionResponse.add_member(:segment_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionResponse[:http_payload] = :segment_response
    GetSegmentVersionResponse[:http_payload_member] = GetSegmentVersionResponse.member(:segment_response)
    GetSegmentVersionResponse.type = Types::GetSegmentVersionResponse
    GetSegmentVersionsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetSegmentVersionsRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetSegmentVersionsRequest.type = Types::GetSegmentVersionsRequest
    GetSegmentVersionsResponse.add_member(:segments_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentsResponse, location_name: 'SegmentsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentVersionsResponse[:http_payload] = :segments_response
    GetSegmentVersionsResponse[:http_payload_member] = GetSegmentVersionsResponse.member(:segments_response)
    GetSegmentVersionsResponse.type = Types::GetSegmentVersionsResponse
    GetSegmentsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    GetSegmentsRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    GetSegmentsRequest.type = Types::GetSegmentsRequest
    GetSegmentsResponse.add_member(:segments_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentsResponse, location_name: 'SegmentsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSegmentsResponse[:http_payload] = :segments_response
    GetSegmentsResponse[:http_payload_member] = GetSegmentsResponse.member(:segments_response)
    GetSegmentsResponse.type = Types::GetSegmentsResponse
    GetSmsChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSmsChannelRequest.type = Types::GetSmsChannelRequest
    GetSmsChannelResponse.add_member(:sms_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelResponse, location_name: 'SMSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSmsChannelResponse[:http_payload] = :sms_channel_response
    GetSmsChannelResponse[:http_payload_member] = GetSmsChannelResponse.member(:sms_channel_response)
    GetSmsChannelResponse.type = Types::GetSmsChannelResponse
    GetSmsTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSmsTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    GetSmsTemplateRequest.type = Types::GetSmsTemplateRequest
    GetSmsTemplateResponse.add_member(:sms_template_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSTemplateResponse, location_name: 'SMSTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSmsTemplateResponse[:http_payload] = :sms_template_response
    GetSmsTemplateResponse[:http_payload_member] = GetSmsTemplateResponse.member(:sms_template_response)
    GetSmsTemplateResponse.type = Types::GetSmsTemplateResponse
    GetUserEndpointsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserEndpointsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserEndpointsRequest.type = Types::GetUserEndpointsRequest
    GetUserEndpointsResponse.add_member(:endpoints_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsResponse, location_name: 'EndpointsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetUserEndpointsResponse[:http_payload] = :endpoints_response
    GetUserEndpointsResponse[:http_payload_member] = GetUserEndpointsResponse.member(:endpoints_response)
    GetUserEndpointsResponse.type = Types::GetUserEndpointsResponse
    GetVoiceChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceChannelRequest.type = Types::GetVoiceChannelRequest
    GetVoiceChannelResponse.add_member(:voice_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelResponse, location_name: 'VoiceChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetVoiceChannelResponse[:http_payload] = :voice_channel_response
    GetVoiceChannelResponse[:http_payload_member] = GetVoiceChannelResponse.member(:voice_channel_response)
    GetVoiceChannelResponse.type = Types::GetVoiceChannelResponse
    GetVoiceTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    GetVoiceTemplateRequest.type = Types::GetVoiceTemplateRequest
    GetVoiceTemplateResponse.add_member(:voice_template_response, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceTemplateResponse, location_name: 'VoiceTemplateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetVoiceTemplateResponse[:http_payload] = :voice_template_response
    GetVoiceTemplateResponse[:http_payload_member] = GetVoiceTemplateResponse.member(:voice_template_response)
    GetVoiceTemplateResponse.type = Types::GetVoiceTemplateResponse
    HoldoutActivity.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after performing the holdout activity.</p>"}))
    HoldoutActivity.add_member(:percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Percentage', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The percentage of participants who shouldn't continue the journey.</p> <p>To determine which participants are held out, Amazon Pinpoint applies a probability-based algorithm to the percentage that you specify. Therefore, the actual percentage of participants who are held out may not be equal to the percentage that you specify.</p>", "smithy.api#required" => {}}))
    HoldoutActivity.type = Types::HoldoutActivity
    ImportJobRequest.add_member(:define_segment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefineSegment', traits: {"smithy.api#documentation" => "<p>Specifies whether to create a segment that contains the endpoints, when the endpoint definitions are imported.</p>"}))
    ImportJobRequest.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId', traits: {"smithy.api#documentation" => "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>"}))
    ImportJobRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The format of the files that contain the endpoint definitions to import. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format. If the Amazon S3 location stores multiple files that use different formats, Amazon Pinpoint imports data only from the files that use the specified format.</p>", "smithy.api#required" => {}}))
    ImportJobRequest.add_member(:register_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RegisterEndpoints', traits: {"smithy.api#documentation" => "<p>Specifies whether to register the endpoints with Amazon Pinpoint, when the endpoint definitions are imported.</p>"}))
    ImportJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>", "smithy.api#required" => {}}))
    ImportJobRequest.add_member(:s3_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Url', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that contains the endpoint definitions to import. This location can be a folder or a single file. If the location is a folder, Amazon Pinpoint imports endpoint definitions from the files in this location, including any subfolders that the folder contains.</p> <p>The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/<replaceable>file-name</replaceable>. The location can end with the key for an individual object or a prefix that qualifies multiple objects.</p>", "smithy.api#required" => {}}))
    ImportJobRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The identifier for the segment to update or add the imported endpoint definitions to, if the import job is meant to update an existing segment.</p>"}))
    ImportJobRequest.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>A custom name for the segment that's created by the import job, if the value of the DefineSegment property is true.</p>"}))
    ImportJobRequest.type = Types::ImportJobRequest
    ImportJobResource.add_member(:define_segment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefineSegment', traits: {"smithy.api#documentation" => "<p>Specifies whether the import job creates a segment that contains the endpoints, when the endpoint definitions are imported.</p>"}))
    ImportJobResource.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId', traits: {"smithy.api#documentation" => "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>"}))
    ImportJobResource.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The format of the files that contain the endpoint definitions to import. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format.</p> <p>If the files are stored in an Amazon S3 location and that location contains multiple files that use different formats, Amazon Pinpoint imports data only from the files that use the specified format.</p>", "smithy.api#required" => {}}))
    ImportJobResource.add_member(:register_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RegisterEndpoints', traits: {"smithy.api#documentation" => "<p>Specifies whether the import job registers the endpoints with Amazon Pinpoint, when the endpoint definitions are imported.</p>"}))
    ImportJobResource.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>", "smithy.api#required" => {}}))
    ImportJobResource.add_member(:s3_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Url', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that contains the endpoint definitions to import. This location can be a folder or a single file. If the location is a folder, Amazon Pinpoint imports endpoint definitions from the files in this location, including any subfolders that the folder contains.</p> <p>The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/<replaceable>file-name</replaceable>. The location can end with the key for an individual object or a prefix that qualifies multiple objects.</p>", "smithy.api#required" => {}}))
    ImportJobResource.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The identifier for the segment that the import job updates or adds endpoint definitions to, if the import job updates an existing segment.</p>"}))
    ImportJobResource.add_member(:segment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentName', traits: {"smithy.api#documentation" => "<p>The custom name for the segment that's created by the import job, if the value of the DefineSegment property is true.</p>"}))
    ImportJobResource.type = Types::ImportJobResource
    ImportJobResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that's associated with the import job.</p>", "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:completed_pieces, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CompletedPieces', traits: {"smithy.api#documentation" => "<p>The number of pieces that were processed successfully (completed) by the import job, as of the time of the request.</p>"}))
    ImportJobResponse.add_member(:completion_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompletionDate', traits: {"smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the import job was completed.</p>"}))
    ImportJobResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the import job was created.</p>", "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResource, location_name: 'Definition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The resource settings that apply to the import job.</p>", "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:failed_pieces, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'FailedPieces', traits: {"smithy.api#documentation" => "<p>The number of pieces that weren't processed successfully (failed) by the import job, as of the time of the request.</p>"}))
    ImportJobResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Failures', traits: {"smithy.api#documentation" => "<p>An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the import job, if any.</p>"}))
    ImportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the import job.</p>", "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The status of the import job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.</p>", "smithy.api#required" => {}}))
    ImportJobResponse.add_member(:total_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalFailures', traits: {"smithy.api#documentation" => "<p>The total number of endpoint definitions that weren't processed successfully (failed) by the import job, typically because an error, such as a syntax error, occurred.</p>"}))
    ImportJobResponse.add_member(:total_pieces, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalPieces', traits: {"smithy.api#documentation" => "<p>The total number of pieces that must be processed to complete the import job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the import job.</p>"}))
    ImportJobResponse.add_member(:total_processed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalProcessed', traits: {"smithy.api#documentation" => "<p>The total number of endpoint definitions that were processed by the import job.</p>"}))
    ImportJobResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The job type. This value is IMPORT for import jobs.</p>", "smithy.api#required" => {}}))
    ImportJobResponse.type = Types::ImportJobResponse
    ImportJobsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfImportJobResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each import job that's associated with the application (Import Jobs resource) or segment (Segment Import Jobs resource).</p>", "smithy.api#required" => {}}))
    ImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    ImportJobsResponse.type = Types::ImportJobsResponse
    InAppCampaignSchedule.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>The scheduled time after which the in-app message should not be shown. Timestamp is in ISO 8601 format.</p>"}))
    InAppCampaignSchedule.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignEventFilter, location_name: 'EventFilter', traits: {"smithy.api#documentation" => "<p>The event filter the SDK has to use to show the in-app message in the application.</p>"}))
    InAppCampaignSchedule.add_member(:quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime', traits: {"smithy.api#documentation" => "<p>Time during which the in-app message should not be shown to the user.</p>"}))
    InAppCampaignSchedule.type = Types::InAppCampaignSchedule
    InAppMessage.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>In-app message content.</p>"}))
    InAppMessage.add_member(:custom_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig', traits: {"smithy.api#documentation" => "<p>Custom config to be sent to SDK.</p>"}))
    InAppMessage.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout', traits: {"smithy.api#documentation" => "<p>The layout of the message.</p>"}))
    InAppMessage.type = Types::InAppMessage
    InAppMessageBodyConfig.add_member(:alignment, Smithy::Schema::Shapes::ShapeRef.new(shape: Alignment, location_name: 'Alignment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The alignment of the text. Valid values: LEFT, CENTER, RIGHT.</p>", "smithy.api#required" => {}}))
    InAppMessageBodyConfig.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Message Body.</p>", "smithy.api#required" => {}}))
    InAppMessageBodyConfig.add_member(:text_color, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextColor', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The text color.</p>", "smithy.api#required" => {}}))
    InAppMessageBodyConfig.type = Types::InAppMessageBodyConfig
    InAppMessageButton.add_member(:android, Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideButtonConfiguration, location_name: 'Android', traits: {"smithy.api#documentation" => "<p>Default button content.</p>"}))
    InAppMessageButton.add_member(:default_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultButtonConfiguration, location_name: 'DefaultConfig', traits: {"smithy.api#documentation" => "<p>Default button content.</p>"}))
    InAppMessageButton.add_member(:ios, Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideButtonConfiguration, location_name: 'IOS', traits: {"smithy.api#documentation" => "<p>Default button content.</p>"}))
    InAppMessageButton.add_member(:web, Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideButtonConfiguration, location_name: 'Web', traits: {"smithy.api#documentation" => "<p>Default button content.</p>"}))
    InAppMessageButton.type = Types::InAppMessageButton
    InAppMessageCampaign.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>Campaign id of the corresponding campaign.</p>"}))
    InAppMessageCampaign.add_member(:daily_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DailyCap', traits: {"smithy.api#documentation" => "<p>Daily cap which controls the number of times any in-app messages can be shown to the endpoint during a day.</p>"}))
    InAppMessageCampaign.add_member(:in_app_message, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessage, location_name: 'InAppMessage', traits: {"smithy.api#documentation" => "<p>In-app message content with all fields required for rendering an in-app message.</p>"}))
    InAppMessageCampaign.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>Priority of the in-app message.</p>"}))
    InAppMessageCampaign.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppCampaignSchedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>Schedule of the campaign.</p>"}))
    InAppMessageCampaign.add_member(:session_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SessionCap', traits: {"smithy.api#documentation" => "<p>Session cap which controls the number of times an in-app message can be shown to the endpoint during an application session.</p>"}))
    InAppMessageCampaign.add_member(:total_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalCap', traits: {"smithy.api#documentation" => "<p>Total cap which controls the number of times an in-app message can be shown to the endpoint.</p>"}))
    InAppMessageCampaign.add_member(:treatment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentId', traits: {"smithy.api#documentation" => "<p>Treatment id of the campaign.</p>"}))
    InAppMessageCampaign.type = Types::InAppMessageCampaign
    InAppMessageContent.add_member(:background_color, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackgroundColor', traits: {"smithy.api#documentation" => "<p>The background color for the message.</p>"}))
    InAppMessageContent.add_member(:body_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageBodyConfig, location_name: 'BodyConfig', traits: {"smithy.api#documentation" => "<p>The configuration for the message body.</p>"}))
    InAppMessageContent.add_member(:header_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageHeaderConfig, location_name: 'HeaderConfig', traits: {"smithy.api#documentation" => "<p>The configuration for the message header.</p>"}))
    InAppMessageContent.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The image url for the background of message.</p>"}))
    InAppMessageContent.add_member(:primary_btn, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageButton, location_name: 'PrimaryBtn', traits: {"smithy.api#documentation" => "<p>The first button inside the message.</p>"}))
    InAppMessageContent.add_member(:secondary_btn, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageButton, location_name: 'SecondaryBtn', traits: {"smithy.api#documentation" => "<p>The second button inside message.</p>"}))
    InAppMessageContent.type = Types::InAppMessageContent
    InAppMessageHeaderConfig.add_member(:alignment, Smithy::Schema::Shapes::ShapeRef.new(shape: Alignment, location_name: 'Alignment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The alignment of the text. Valid values: LEFT, CENTER, RIGHT.</p>", "smithy.api#required" => {}}))
    InAppMessageHeaderConfig.add_member(:header, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Header', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Message Header.</p>", "smithy.api#required" => {}}))
    InAppMessageHeaderConfig.add_member(:text_color, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TextColor', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The text color.</p>", "smithy.api#required" => {}}))
    InAppMessageHeaderConfig.type = Types::InAppMessageHeaderConfig
    InAppMessagesResponse.add_member(:in_app_message_campaigns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageCampaign, location_name: 'InAppMessageCampaigns', traits: {"smithy.api#documentation" => "<p>List of targeted in-app message campaigns.</p>"}))
    InAppMessagesResponse.type = Types::InAppMessagesResponse
    InAppTemplateRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the message, can include up to 5 modals. Each modal must contain a message, a header, and background color. ImageUrl and buttons are optional.</p>"}))
    InAppTemplateRequest.add_member(:custom_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig', traits: {"smithy.api#documentation" => "<p>Custom config to be sent to client.</p>"}))
    InAppTemplateRequest.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout', traits: {"smithy.api#documentation" => "<p>The layout of the message.</p>"}))
    InAppTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<note><p>As of <b>22-05-2023</b> tags has been deprecated for update operations. After this date any value in tags is not processed and an error code is not returned. To manage tags we recommend using either <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/tags-resource-arn.html\">Tags</a> in the <i>API Reference for Amazon Pinpoint</i>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html\">resourcegroupstaggingapi</a> commands in the <i>AWS Command Line Interface Documentation</i> or <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/resourcegroupstaggingapi/package-summary.html\">resourcegroupstaggingapi</a> in the <i>AWS SDK</i>.</p></note> <p>(Deprecated) A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    InAppTemplateRequest.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The description of the template.</p>"}))
    InAppTemplateRequest.type = Types::InAppTemplateRequest
    InAppTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The resource arn of the template.</p>"}))
    InAppTemplateResponse.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfInAppMessageContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the message, can include up to 5 modals. Each modal must contain a message, a header, and background color. ImageUrl and buttons are optional.</p>"}))
    InAppTemplateResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The creation date of the template.</p>", "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:custom_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'CustomConfig', traits: {"smithy.api#documentation" => "<p>Custom config to be sent to client.</p>"}))
    InAppTemplateResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The last modified date of the template.</p>", "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: Layout, location_name: 'Layout', traits: {"smithy.api#documentation" => "<p>The layout of the message.</p>"}))
    InAppTemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    InAppTemplateResponse.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The description of the template.</p>"}))
    InAppTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the template.</p>", "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of the template.</p>", "smithy.api#required" => {}}))
    InAppTemplateResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version id of the template.</p>"}))
    InAppTemplateResponse.type = Types::InAppTemplateResponse
    Include.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Include.add_member(:any, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    Include.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    InternalServerErrorException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ItemResponse.add_member(:endpoint_item_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointItemResponse, location_name: 'EndpointItemResponse', traits: {"smithy.api#documentation" => "<p>The response that was received after the endpoint data was accepted.</p>"}))
    ItemResponse.add_member(:events_item_response, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEventItemResponse, location_name: 'EventsItemResponse', traits: {"smithy.api#documentation" => "<p>A multipart response object that contains a key and a value for each event in the request. In each object, the event ID is the key and an EventItemResponse object is the value.</p>"}))
    ItemResponse.type = Types::ItemResponse
    JobStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    JobStatus.add_member(:preparing_for_initialization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING_FOR_INITIALIZATION', traits: {"smithy.api#enumValue" => "PREPARING_FOR_INITIALIZATION"}))
    JobStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    JobStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    JobStatus.add_member(:pending_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_JOB', traits: {"smithy.api#enumValue" => "PENDING_JOB"}))
    JobStatus.add_member(:completing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETING', traits: {"smithy.api#enumValue" => "COMPLETING"}))
    JobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILING', traits: {"smithy.api#enumValue" => "FAILING"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JourneyChannelSettings.add_member(:connect_campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectCampaignArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Connect Campaign.</p>"}))
    JourneyChannelSettings.add_member(:connect_campaign_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectCampaignExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>IAM role ARN to be assumed when invoking Connect campaign execution APIs for dialing.</p>"}))
    JourneyChannelSettings.type = Types::JourneyChannelSettings
    JourneyCustomMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The message content that's passed to an AWS Lambda function or to a web hook.</p>"}))
    JourneyCustomMessage.type = Types::JourneyCustomMessage
    JourneyDateRangeKpiResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>", "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:kpi_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KpiName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:kpi_result, Smithy::Schema::Shapes::ShapeRef.new(shape: BaseKpiResult, location_name: 'KpiResult', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>", "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Journey Engagement Metrics resource because the resource returns all results in a single page.</p>"}))
    JourneyDateRangeKpiResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>", "smithy.api#required" => {}}))
    JourneyDateRangeKpiResponse.type = Types::JourneyDateRangeKpiResponse
    JourneyEmailMessage.add_member(:from_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromAddress', traits: {"smithy.api#documentation" => "<p>The verified email address to send the email message from. The default address is the FromAddress specified for the email channel for the application.</p>"}))
    JourneyEmailMessage.type = Types::JourneyEmailMessage
    JourneyExecutionActivityMetricsResponse.add_member(:activity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of activity that the metric applies to. Possible values are:</p> <ul><li><p>CONDITIONAL_SPLIT – For a yes/no split activity, which is an activity that sends participants down one of two paths in a journey.</p></li> <li><p>HOLDOUT – For a holdout activity, which is an activity that stops a journey for a specified percentage of participants.</p></li> <li><p>MESSAGE – For an email activity, which is an activity that sends an email message to participants.</p></li> <li><p>MULTI_CONDITIONAL_SPLIT – For a multivariate split activity, which is an activity that sends participants down one of as many as five paths in a journey.</p></li> <li><p>RANDOM_SPLIT – For a random split activity, which is an activity that sends specified percentages of participants down one of as many as five paths in a journey.</p></li> <li><p>WAIT – For a wait activity, which is an activity that waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p></li></ul>", "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:journey_activity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the activity that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:last_evaluated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the execution status of the activity and updated the data for the metric.</p>", "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A JSON object that contains the results of the query. The results vary depending on the type of activity (ActivityType). For information about the structure and contents of the results, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    JourneyExecutionActivityMetricsResponse.type = Types::JourneyExecutionActivityMetricsResponse
    JourneyExecutionMetricsResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.add_member(:last_evaluated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the journey and updated the data for the metric.</p>", "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A JSON object that contains the results of the query. For information about the structure and contents of the results, see the <a href=\"https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    JourneyExecutionMetricsResponse.type = Types::JourneyExecutionMetricsResponse
    JourneyLimits.add_member(:daily_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DailyCap', traits: {"smithy.api#documentation" => "<p>The maximum number of messages that the journey can send to a single participant during a 24-hour period. The maximum value is 100.</p>"}))
    JourneyLimits.add_member(:endpoint_reentry_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointReentryCap', traits: {"smithy.api#documentation" => "<p>The maximum number of times that a participant can enter the journey. The maximum value is 100. To allow participants to enter the journey an unlimited number of times, set this value to 0.</p>"}))
    JourneyLimits.add_member(:messages_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MessagesPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of messages that the journey can send each second.</p>"}))
    JourneyLimits.add_member(:endpoint_reentry_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointReentryInterval', traits: {"smithy.api#documentation" => "<p>Minimum time that must pass before an endpoint can re-enter a given journey. The duration should use an ISO 8601 format, such as PT1H. </p>"}))
    JourneyLimits.add_member(:timeframe_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyTimeframeCap, location_name: 'TimeframeCap', traits: {"smithy.api#documentation" => "<p>The number of messages that an endpoint can receive during the specified timeframe.</p>"}))
    JourneyLimits.add_member(:total_cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalCap', traits: {"smithy.api#documentation" => "<p>The maximum number of messages a journey can sent to a single endpoint. The maximum value is 100. If set to 0, this limit will not apply.</p>"}))
    JourneyLimits.type = Types::JourneyLimits
    JourneyPushMessage.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>The number of seconds that the push notification service should keep the message, if the service is unable to deliver the notification the first time. This value is converted to an expiration value when it's sent to a push-notification service. If this value is 0, the service treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>This value doesn't apply to messages that are sent through the Amazon Device Messaging (ADM) service.</p>"}))
    JourneyPushMessage.type = Types::JourneyPushMessage
    JourneyResponse.add_member(:activities, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfActivity, location_name: 'Activities', traits: {"smithy.api#documentation" => "<p>A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity.</p>"}))
    JourneyResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the journey applies to.</p>", "smithy.api#required" => {}}))
    JourneyResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the journey was created.</p>"}))
    JourneyResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#required" => {}}))
    JourneyResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the journey was last modified.</p>"}))
    JourneyResponse.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyLimits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>The messaging and entry limits for the journey.</p>"}))
    JourneyResponse.add_member(:local_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LocalTime', traits: {"smithy.api#documentation" => "<p>Specifies whether the journey's scheduled start and end times use each participant's local time. If this value is true, the schedule uses each participant's local time.</p>"}))
    JourneyResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the journey.</p>", "smithy.api#required" => {}}))
    JourneyResponse.add_member(:quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime', traits: {"smithy.api#documentation" => "<p>The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.</p></li> <li><p>The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.</p></li> <li><p>The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey.</p></li></ul> <p>If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.</p>"}))
    JourneyResponse.add_member(:refresh_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RefreshFrequency', traits: {"smithy.api#documentation" => "<p>The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.</p>"}))
    JourneyResponse.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneySchedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule settings for the journey.</p>"}))
    JourneyResponse.add_member(:start_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the first activity in the journey.</p>"}))
    JourneyResponse.add_member(:start_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: StartCondition, location_name: 'StartCondition', traits: {"smithy.api#documentation" => "<p>The segment that defines which users are participants in the journey.</p>"}))
    JourneyResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the journey. Possible values are:</p> <ul><li><p>DRAFT - The journey is being developed and hasn't been published yet.</p></li> <li><p>ACTIVE - The journey has been developed and published. Depending on the journey's schedule, the journey may currently be running or scheduled to start running at a later time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.</p></li> <li><p>COMPLETED - The journey has been published and has finished running. All participants have entered the journey and no participants are waiting to complete the journey or any activities in the journey.</p></li> <li><p>CANCELLED - The journey has been stopped. If a journey's status is CANCELLED, you can't add, change, or remove activities or segment settings from the journey.</p></li> <li><p>CLOSED - The journey has been published and has started running. It may have also passed its scheduled end time, or passed its scheduled start time and a refresh frequency hasn't been specified for it. If a journey's status is CLOSED, you can't add participants to it, and no existing participants can enter the journey for the first time. However, any existing participants who are currently waiting to start an activity may continue the journey.</p></li></ul>"}))
    JourneyResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>This object is not used or supported.</p>", "smithy.api#jsonName" => "tags"}))
    JourneyResponse.add_member(:wait_for_quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WaitForQuietTime', traits: {"smithy.api#documentation" => "<p>Indicates whether endpoints in quiet hours should enter a wait activity until quiet hours have elapsed.</p>"}))
    JourneyResponse.add_member(:refresh_on_segment_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RefreshOnSegmentUpdate', traits: {"smithy.api#documentation" => "<p>Indicates whether the journey participants should be refreshed when a segment is updated.</p>"}))
    JourneyResponse.add_member(:journey_channel_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyChannelSettings, location_name: 'JourneyChannelSettings', traits: {"smithy.api#documentation" => "<p>The channel-specific configurations for the journey.</p>"}))
    JourneyResponse.add_member(:sending_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SendingSchedule', traits: {"smithy.api#documentation" => "<p>Indicates if journey has Advance Quiet Time enabled. This flag should be set to true in order to allow using OpenHours and ClosedDays.</p>"}))
    JourneyResponse.add_member(:open_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenHours, location_name: 'OpenHours', traits: {"smithy.api#documentation" => "<p>The time when a journey can send messages. QuietTime should be configured first and SendingSchedule should be set to true.</p>"}))
    JourneyResponse.add_member(:closed_days, Smithy::Schema::Shapes::ShapeRef.new(shape: ClosedDays, location_name: 'ClosedDays', traits: {"smithy.api#documentation" => "<p>The time when a journey will not send messages. QuietTime should be configured first and SendingSchedule should be set to true.</p>"}))
    JourneyResponse.add_member(:timezone_estimation_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTimezoneestimationmethodselement, location_name: 'TimezoneEstimationMethods', traits: {"smithy.api#documentation" => "<p>An array of time zone estimation methods, if any, to use for determining an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints-endpoint-id.html\">Endpoints</a> time zone if the Endpoint does not have a value for the Demographic.Timezone attribute.</p> <ul> <li><p>PHONE_NUMBER - A time zone is determined based on the Endpoint.Address and Endpoint.Location.Country.</p></li> <li><p>POSTAL_CODE - A time zone is determined based on the Endpoint.Location.PostalCode and Endpoint.Location.Country.</p> <note><p>POSTAL_CODE detection is only supported in the United States, United Kingdom, Australia, New Zealand, Canada, France, Italy, Spain, Germany and in regions where Amazon Pinpoint is available.</p></note></li> </ul>"}))
    JourneyResponse.type = Types::JourneyResponse
    JourneyRunExecutionActivityMetricsResponse.add_member(:activity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of activity that the metric applies to. Possible values are:</p> <ul><li><p>CONDITIONAL_SPLIT – For a yes/no split activity, which is an activity that sends participants down one of two paths in a journey.</p></li> <li><p>HOLDOUT – For a holdout activity, which is an activity that stops a journey for a specified percentage of participants.</p></li> <li><p>MESSAGE – For an email activity, which is an activity that sends an email message to participants.</p></li> <li><p>MULTI_CONDITIONAL_SPLIT – For a multivariate split activity, which is an activity that sends participants down one of as many as five paths in a journey.</p></li> <li><p>RANDOM_SPLIT – For a random split activity, which is an activity that sends specified percentages of participants down one of as many as five paths in a journey.</p></li> <li><p>WAIT – For a wait activity, which is an activity that waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p></li></ul>", "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:journey_activity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyActivityId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the activity that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:last_evaluated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the execution status of the activity for this journey run and updated the data for the metric.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A JSON object that contains the results of the query. For information about the structure and contents of the results, see see <a href=\"https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html\">Standard Amazon Pinpoint analytics metrics</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey run that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionActivityMetricsResponse.type = Types::JourneyRunExecutionActivityMetricsResponse
    JourneyRunExecutionMetricsResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:last_evaluated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastEvaluatedTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the journey run and updated the data for the metric.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Metrics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A JSON object that contains the results of the query. For information about the structure and contents of the results, see the <a href=\"https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html\">Standard Amazon Pinpoint analytics metrics</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the journey run that the metric applies to.</p>", "smithy.api#required" => {}}))
    JourneyRunExecutionMetricsResponse.type = Types::JourneyRunExecutionMetricsResponse
    JourneyRunResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The time when the journey run was created or scheduled, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    JourneyRunResponse.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastUpdateTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The last time the journey run was updated, in ISO 8601 format..</p>", "smithy.api#required" => {}}))
    JourneyRunResponse.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the run.</p>", "smithy.api#required" => {}}))
    JourneyRunResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The current status of the journey run.</p>", "smithy.api#required" => {}}))
    JourneyRunResponse.type = Types::JourneyRunResponse
    JourneyRunStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    JourneyRunStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JourneyRunStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JourneyRunStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JourneyRunsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJourneyRunResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each run of the journey</p>", "smithy.api#required" => {}}))
    JourneyRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    JourneyRunsResponse.type = Types::JourneyRunsResponse
    JourneySMSMessage.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>"}))
    JourneySMSMessage.add_member(:origination_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber', traits: {"smithy.api#documentation" => "<p>The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.</p>"}))
    JourneySMSMessage.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-countries.html\">Supported Countries and Regions</a> in the Amazon Pinpoint User Guide.</p>"}))
    JourneySMSMessage.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId', traits: {"smithy.api#documentation" => "<p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>"}))
    JourneySMSMessage.add_member(:template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId', traits: {"smithy.api#documentation" => "<p>The template ID received from the regulatory body for sending SMS in your country.</p>"}))
    JourneySMSMessage.type = Types::JourneySMSMessage
    JourneySchedule.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The scheduled time, in ISO 8601 format, when the journey ended or will end.</p>"}))
    JourneySchedule.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The scheduled time, in ISO 8601 format, when the journey began or will begin.</p>"}))
    JourneySchedule.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>The starting UTC offset for the journey schedule, if the value of the journey's LocalTime property is true. Valid values are: UTC,\n                  UTC+01, UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,\n                  UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45, UTC+09, UTC+09:30,\n                  UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45, UTC+13, UTC+13:45, UTC-02,\n                  UTC-02:30, UTC-03, UTC-03:30, UTC-04, UTC-05, UTC-06, UTC-07, UTC-08, UTC-09,\n                  UTC-09:30, UTC-10, and UTC-11.</p>"}))
    JourneySchedule.type = Types::JourneySchedule
    JourneyStateRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the journey. Currently, Supported values are ACTIVE, PAUSED, and CANCELLED</p> <p>If you cancel a journey, Amazon Pinpoint continues to perform activities that are currently in progress, until those activities are complete. Amazon Pinpoint also continues to collect and aggregate analytics data for those activities, until they are complete, and any activities that were complete when you cancelled the journey.</p> <p>After you cancel a journey, you can't add, change, or remove any activities from the journey. In addition, Amazon Pinpoint stops evaluating the journey and doesn't perform any activities that haven't started.</p> <p>When the journey is paused, Amazon Pinpoint continues to perform activities that are currently in progress, until those activities are complete. Endpoints will stop entering journeys when the journey is paused and will resume entering the journey after the journey is resumed. For wait activities, wait time is paused when the journey is paused. Currently, PAUSED only supports journeys with a segment refresh interval.</p>"}))
    JourneyStateRequest.type = Types::JourneyStateRequest
    JourneyTimeframeCap.add_member(:cap, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Cap', traits: {"smithy.api#documentation" => "<p>The maximum number of messages that all journeys can send to an endpoint during the specified timeframe. The maximum value is 100. If set to 0, this limit will not apply.</p>"}))
    JourneyTimeframeCap.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Days', traits: {"smithy.api#documentation" => "<p>The length of the timeframe in days. The maximum value is 30. If set to 0, this limit will not apply.</p>"}))
    JourneyTimeframeCap.type = Types::JourneyTimeframeCap
    JourneysResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJourneyResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each journey that's associated with the application.</p>", "smithy.api#required" => {}}))
    JourneysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    JourneysResponse.type = Types::JourneysResponse
    Layout.add_member(:bottom_banner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTOM_BANNER', traits: {"smithy.api#enumValue" => "BOTTOM_BANNER"}))
    Layout.add_member(:top_banner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP_BANNER', traits: {"smithy.api#enumValue" => "TOP_BANNER"}))
    Layout.add_member(:overlays, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERLAYS', traits: {"smithy.api#enumValue" => "OVERLAYS"}))
    Layout.add_member(:mobile_feed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOBILE_FEED', traits: {"smithy.api#enumValue" => "MOBILE_FEED"}))
    Layout.add_member(:middle_banner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIDDLE_BANNER', traits: {"smithy.api#enumValue" => "MIDDLE_BANNER"}))
    Layout.add_member(:carousel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAROUSEL', traits: {"smithy.api#enumValue" => "CAROUSEL"}))
    ListJourneysRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJourneysRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    ListJourneysRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "token"}))
    ListJourneysRequest.type = Types::ListJourneysRequest
    ListJourneysResponse.add_member(:journeys_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneysResponse, location_name: 'JourneysResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListJourneysResponse[:http_payload] = :journeys_response
    ListJourneysResponse[:http_payload_member] = ListJourneysResponse.member(:journeys_response)
    ListJourneysResponse.type = Types::ListJourneysResponse
    ListOfActivityResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityResponse)
    ListOfApplicationResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResponse)
    ListOfCampaignResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse)
    ListOfClosedDaysRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClosedDaysRule, traits: {"smithy.api#documentation" => "<p>ClosedDays rule details.</p>"})
    ListOfEndpointBatchItem.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointBatchItem)
    ListOfEndpointResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointResponse)
    ListOfExportJobResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobResponse)
    ListOfImportJobResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobResponse)
    ListOfInAppMessageCampaign.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageCampaign)
    ListOfInAppMessageContent.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InAppMessageContent)
    ListOfJourneyResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse)
    ListOfJourneyRunResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyRunResponse)
    ListOfMessageHeader.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeader)
    ListOfMultiConditionalBranch.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MultiConditionalBranch)
    ListOfOpenHoursRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OpenHoursRule, traits: {"smithy.api#documentation" => "<p>Open Hour Rule Details.</p>"})
    ListOfRandomSplitEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RandomSplitEntry)
    ListOfRecommenderConfigurationResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse)
    ListOfResultRow.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResultRow)
    ListOfResultRowValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResultRowValue)
    ListOfSegmentDimensions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions)
    ListOfSegmentGroup.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentGroup)
    ListOfSegmentReference.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentReference)
    ListOfSegmentResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse)
    ListOfSimpleCondition.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCondition)
    ListOfTemplateResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateResponse)
    ListOfTemplateVersionResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionResponse)
    ListOfTreatmentResource.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TreatmentResource)
    ListOfWriteTreatmentResource.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WriteTreatmentResource)
    ListOfEndpointtypeselement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Endpointtypeselement)
    ListOfTimezoneestimationmethodselement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Timezoneestimationmethodselement)
    ListOfString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListRecommenderConfigurationsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRecommenderConfigurationResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each recommender model configuration that's associated with your Amazon Pinpoint account.</p>", "smithy.api#required" => {}}))
    ListRecommenderConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    ListRecommenderConfigurationsResponse.type = Types::ListRecommenderConfigurationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags_model, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsModel, location_name: 'TagsModel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceResponse[:http_payload] = :tags_model
    ListTagsForResourceResponse[:http_payload_member] = ListTagsForResourceResponse.member(:tags_model)
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTemplateVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListTemplateVersionsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    ListTemplateVersionsRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateVersionsRequest.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#documentation" => "<p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>", "smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[^a-z]*$", "smithy.api#required" => {}}))
    ListTemplateVersionsRequest.type = Types::ListTemplateVersionsRequest
    ListTemplateVersionsResponse.add_member(:template_versions_response, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateVersionsResponse, location_name: 'TemplateVersionsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTemplateVersionsResponse[:http_payload] = :template_versions_response
    ListTemplateVersionsResponse[:http_payload_member] = ListTemplateVersionsResponse.member(:template_versions_response)
    ListTemplateVersionsResponse.type = Types::ListTemplateVersionsResponse
    ListTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListTemplatesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>", "smithy.api#httpQuery" => "page-size"}))
    ListTemplatesRequest.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>The substring to match in the names of the message templates to include in the results. If you specify this value, Amazon Pinpoint returns only those templates whose names begin with the value that you specify.</p>", "smithy.api#httpQuery" => "prefix"}))
    ListTemplatesRequest.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#documentation" => "<p>The type of message template to include in the results. Valid values are: EMAIL, PUSH, SMS, and VOICE. To include all types of templates in the results, don't include this parameter in your request.</p>", "smithy.api#httpQuery" => "template-type"}))
    ListTemplatesRequest.type = Types::ListTemplatesRequest
    ListTemplatesResponse.add_member(:templates_response, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesResponse, location_name: 'TemplatesResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTemplatesResponse[:http_payload] = :templates_response
    ListTemplatesResponse[:http_payload_member] = ListTemplatesResponse.member(:templates_response)
    ListTemplatesResponse.type = Types::ListTemplatesResponse
    MapOfActivity.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfActivity.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Activity)
    MapOfAddressConfiguration.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfAddressConfiguration.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AddressConfiguration)
    MapOfAttributeDimension.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfAttributeDimension.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDimension)
    MapOfChannelResponse.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfChannelResponse.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelResponse)
    MapOfEndpointMessageResult.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEndpointMessageResult.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointMessageResult)
    MapOfEndpointSendConfiguration.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEndpointSendConfiguration.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointSendConfiguration)
    MapOfEvent.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEvent.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    MapOfEventItemResponse.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEventItemResponse.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EventItemResponse)
    MapOfEventsBatch.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfEventsBatch.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EventsBatch)
    MapOfItemResponse.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfItemResponse.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ItemResponse)
    MapOfListOfOpenHoursRules.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, traits: {"smithy.api#documentation" => "<p>Day of a week when the rule will be applied. Valid values are [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY]</p>"})
    MapOfListOfOpenHoursRules.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfOpenHoursRules, traits: {"smithy.api#documentation" => "<p>Open Hour Rules.</p>"})
    MapOfListOfString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfListOfString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString)
    MapOfMapOfEndpointMessageResult.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMapOfEndpointMessageResult.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointMessageResult)
    MapOfMessageResult.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMessageResult.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageResult)
    MapOfMetricDimension.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfMetricDimension.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimension)
    MapOfDouble.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfDouble.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Double)
    MapOfInteger.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfInteger.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    MapOfString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Message.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to occur if a recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of iOS and Android.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"}))
    Message.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the notification message. The maximum number of characters is 200.</p>"}))
    Message.add_member(:image_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the image to display as the push-notification icon, such as the icon for the app.</p>"}))
    Message.add_member(:image_small_icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageSmallIconUrl', traits: {"smithy.api#documentation" => "<p>The URL of the image to display as the small, push-notification icon, such as a small version of the icon for the app.</p>"}))
    Message.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image to display in the push notification.</p>"}))
    Message.add_member(:json_body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JsonBody', traits: {"smithy.api#documentation" => "<p>The JSON payload to use for a silent push notification.</p>"}))
    Message.add_member(:media_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl', traits: {"smithy.api#documentation" => "<p>The URL of the image or video to display in the push notification.</p>"}))
    Message.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"}))
    Message.add_member(:silent_push, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SilentPush', traits: {"smithy.api#documentation" => "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration, displaying messages in an in-app message center, or supporting phone home functionality.</p>"}))
    Message.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>The number of seconds that the push-notification service should keep the message, if the service is unable to deliver the notification the first time. This value is converted to an expiration value when it's sent to a push-notification service. If this value is 0, the service treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>This value doesn't apply to messages that are sent through the Amazon Device Messaging (ADM) service.</p>"}))
    Message.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title to display above the notification message on a recipient's device.</p>"}))
    Message.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to open in a recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"}))
    Message.type = Types::Message
    MessageBody.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    MessageBody.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    MessageBody.type = Types::MessageBody
    MessageConfiguration.add_member(:adm_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'ADMMessage', traits: {"smithy.api#documentation" => "<p>The message that the campaign sends through the ADM (Amazon Device Messaging) channel. If specified, this message overrides the default message.</p>"}))
    MessageConfiguration.add_member(:apns_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'APNSMessage', traits: {"smithy.api#documentation" => "<p>The message that the campaign sends through the APNs (Apple Push Notification service) channel. If specified, this message overrides the default message.</p>"}))
    MessageConfiguration.add_member(:baidu_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'BaiduMessage', traits: {"smithy.api#documentation" => "<p>The message that the campaign sends through the Baidu (Baidu Cloud Push) channel. If specified, this message overrides the default message.</p>"}))
    MessageConfiguration.add_member(:custom_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignCustomMessage, location_name: 'CustomMessage', traits: {"smithy.api#documentation" => "<p>The message that the campaign sends through a custom channel, as specified by the delivery configuration (CustomDeliveryConfiguration) settings for the campaign. If specified, this message overrides the default message.</p>"}))
    MessageConfiguration.add_member(:default_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'DefaultMessage', traits: {"smithy.api#documentation" => "<p>The default message that the campaign sends through all the channels that are configured for the campaign.</p>"}))
    MessageConfiguration.add_member(:email_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignEmailMessage, location_name: 'EmailMessage', traits: {"smithy.api#documentation" => "<p>The message that the campaign sends through the email channel. If specified, this message overrides the default message.</p>"}))
    MessageConfiguration.add_member(:gcm_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'GCMMessage', traits: {"smithy.api#documentation" => "<p>The message that the campaign sends through the GCM channel, which enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. If specified, this message overrides the default message.</p>"}))
    MessageConfiguration.add_member(:sms_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSmsMessage, location_name: 'SMSMessage', traits: {"smithy.api#documentation" => "<p>The message that the campaign sends through the SMS channel. If specified, this message overrides the default message.</p>"}))
    MessageConfiguration.add_member(:in_app_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignInAppMessage, location_name: 'InAppMessage', traits: {"smithy.api#documentation" => "<p>The in-app message configuration.</p>"}))
    MessageConfiguration.type = Types::MessageConfiguration
    MessageHeader.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the message header. The header name can contain up to 126 characters.</p>"}))
    MessageHeader.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the message header. The header value can contain up to 870 characters, including the length of any rendered attributes. For example if you add the {CreationDate} attribute, it renders as YYYY-MM-DDTHH:MM:SS.SSSZ and is 24 characters in length.</p>"}))
    MessageHeader.type = Types::MessageHeader
    MessageRequest.add_member(:addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAddressConfiguration, location_name: 'Addresses', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs, where each key is an address and each value is an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-addressconfiguration\">AddressConfiguration</a> object. An address can be a push notification token, a phone number, or an email address. You can use an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-addressconfiguration\">AddressConfiguration</a> object to tailor the message for an address by specifying settings such as content overrides and message variables.</p>"}))
    MessageRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>A map of custom attributes to attach to the message. For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>"}))
    MessageRequest.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointSendConfiguration, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs, where each key is an endpoint ID and each value is an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> object. You can use an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> object to tailor the message for an endpoint by specifying settings such as content overrides and message variables.</p>"}))
    MessageRequest.add_member(:message_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectMessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The settings and content for the default message and any default messages that you defined for specific channels.</p>", "smithy.api#required" => {}}))
    MessageRequest.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration', traits: {"smithy.api#documentation" => "<p>The message template to use for the message.</p>"}))
    MessageRequest.add_member(:trace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TraceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for tracing the message. This identifier is visible to message recipients.</p>"}))
    MessageRequest.type = Types::MessageRequest
    MessageResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that was used to send the message.</p>", "smithy.api#required" => {}}))
    MessageResponse.add_member(:endpoint_result, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointMessageResult, location_name: 'EndpointResult', traits: {"smithy.api#documentation" => "<p>A map that contains a multipart response for each address that the message was sent to. In the map, the endpoint ID is the key and the result is the value.</p>"}))
    MessageResponse.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The identifier for the original request that the message was delivered for.</p>"}))
    MessageResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMessageResult, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>A map that contains a multipart response for each address (email address, phone number, or push notification token) that the message was sent to. In the map, the address is the key and the result is the value.</p>"}))
    MessageResponse.type = Types::MessageResponse
    MessageResult.add_member(:delivery_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: 'DeliveryStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The delivery status of the message. Possible values are:</p> <ul> <li><p>DUPLICATE - The endpoint address is a duplicate of another endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li>   <li><p>OPT_OUT - The user who's associated with the endpoint address has opted out of receiving messages from you. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>PERMANENT_FAILURE - An error occurred when delivering the message to the endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li>   <li><p>SUCCESSFUL - The message was successfully delivered to the endpoint address.</p></li> <li><p>TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>THROTTLED - Amazon Pinpoint throttled the operation to send the message to the endpoint address.</p></li> <li><p>UNKNOWN_FAILURE - An unknown error occurred.</p></li></ul>", "smithy.api#required" => {}}))
    MessageResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message that was sent.</p>"}))
    MessageResult.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The downstream service status code for delivering the message.</p>", "smithy.api#required" => {}}))
    MessageResult.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for delivering the message.</p>"}))
    MessageResult.add_member(:updated_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdatedToken', traits: {"smithy.api#documentation" => "<p>For push notifications that are sent through the GCM channel, specifies whether the endpoint's device registration token was updated as part of delivering the message.</p>"}))
    MessageResult.type = Types::MessageResult
    MessageType.add_member(:transactional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSACTIONAL', traits: {"smithy.api#enumValue" => "TRANSACTIONAL"}))
    MessageType.add_member(:promotional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROMOTIONAL', traits: {"smithy.api#enumValue" => "PROMOTIONAL"}))
    MethodNotAllowedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    MethodNotAllowedException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    MetricDimension.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ComparisonOperator', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The operator to use when comparing metric values. Valid values are: GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, and EQUAL.</p>", "smithy.api#required" => {}}))
    MetricDimension.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value to compare.</p>", "smithy.api#required" => {}}))
    MetricDimension.type = Types::MetricDimension
    Mode.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "DELIVERY"}))
    Mode.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILTER', traits: {"smithy.api#enumValue" => "FILTER"}))
    MultiConditionalBranch.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCondition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>The condition to evaluate for the activity path.</p>"}))
    MultiConditionalBranch.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after completing the activity for the path.</p>"}))
    MultiConditionalBranch.type = Types::MultiConditionalBranch
    MultiConditionalSplitActivity.add_member(:branches, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMultiConditionalBranch, location_name: 'Branches', traits: {"smithy.api#documentation" => "<p>The paths for the activity, including the conditions for entering each path and the activity to perform for each path.</p>"}))
    MultiConditionalSplitActivity.add_member(:default_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the activity to perform for participants who don't meet any of the conditions specified for other paths in the activity.</p>"}))
    MultiConditionalSplitActivity.add_member(:evaluation_wait_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTime, location_name: 'EvaluationWaitTime', traits: {"smithy.api#documentation" => "<p>The amount of time to wait or the date and time when Amazon Pinpoint determines whether the conditions are met.</p>"}))
    MultiConditionalSplitActivity.type = Types::MultiConditionalSplitActivity
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    NotFoundException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    NotFoundException.type = Types::NotFoundException
    NumberValidateRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.</p>"}))
    NumberValidateRequest.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number to retrieve information about. The phone number that you provide should include a valid numeric country code. Otherwise, the operation might result in an error.</p>"}))
    NumberValidateRequest.type = Types::NumberValidateRequest
    NumberValidateResponse.add_member(:carrier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Carrier', traits: {"smithy.api#documentation" => "<p>The carrier or service provider that the phone number is currently registered with. In some countries and regions, this value may be the carrier or service provider that the phone number was originally registered with.</p>"}))
    NumberValidateResponse.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'City', traits: {"smithy.api#documentation" => "<p>The name of the city where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:cleansed_phone_number_e164, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CleansedPhoneNumberE164', traits: {"smithy.api#documentation" => "<p>The cleansed phone number, in E.164 format, for the location where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:cleansed_phone_number_national, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CleansedPhoneNumberNational', traits: {"smithy.api#documentation" => "<p>The cleansed phone number, in the format for the location where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The name of the country or region where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:country_code_iso2, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CountryCodeIso2', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:country_code_numeric, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CountryCodeNumeric', traits: {"smithy.api#documentation" => "<p>The numeric code for the country or region where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:county, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'County', traits: {"smithy.api#documentation" => "<p>The name of the county where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:original_country_code_iso2, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginalCountryCodeIso2', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, that was sent in the request body.</p>"}))
    NumberValidateResponse.add_member(:original_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginalPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number that was sent in the request body.</p>"}))
    NumberValidateResponse.add_member(:phone_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneType', traits: {"smithy.api#documentation" => "<p>The description of the phone type. Valid values are: MOBILE, LANDLINE, VOIP,\n                  INVALID, PREPAID, and OTHER.</p>"}))
    NumberValidateResponse.add_member(:phone_type_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PhoneTypeCode', traits: {"smithy.api#documentation" => "<p>The phone type, represented by an integer. Valid values are: 0 (mobile), 1 (landline), 2 (VoIP), 3 (invalid), 4 (other), and 5 (prepaid).</p>"}))
    NumberValidateResponse.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>The time zone for the location where the phone number was originally registered.</p>"}))
    NumberValidateResponse.add_member(:zip_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ZipCode', traits: {"smithy.api#documentation" => "<p>The postal or ZIP code for the location where the phone number was originally registered.</p>"}))
    NumberValidateResponse.type = Types::NumberValidateResponse
    OpenHours.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'EMAIL', traits: {"smithy.api#documentation" => "<p>Specifies the schedule settings for the email channel.</p>"}))
    OpenHours.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'SMS', traits: {"smithy.api#documentation" => "<p>Specifies the schedule settings for the SMS channel.</p>"}))
    OpenHours.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'PUSH', traits: {"smithy.api#documentation" => "<p>Specifies the schedule settings for the push channel.</p>"}))
    OpenHours.add_member(:voice, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'VOICE', traits: {"smithy.api#documentation" => "<p>Specifies the schedule settings for the voice channel.</p>"}))
    OpenHours.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfOpenHoursRules, location_name: 'CUSTOM', traits: {"smithy.api#documentation" => "<p>Specifies the schedule settings for the custom channel.</p>"}))
    OpenHours.type = Types::OpenHours
    OpenHoursRule.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start of the scheduled time, in ISO 8601 format, when the channel can send messages.</p>"}))
    OpenHoursRule.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the scheduled time, in ISO 8601 format, when the channel can't send messages.</p>"}))
    OpenHoursRule.type = Types::OpenHoursRule
    Operator.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Operator.add_member(:any, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    OverrideButtonConfiguration.add_member(:button_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonAction, location_name: 'ButtonAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Action triggered by the button.</p>", "smithy.api#required" => {}}))
    OverrideButtonConfiguration.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Link', traits: {"smithy.api#documentation" => "<p>Button destination.</p>"}))
    OverrideButtonConfiguration.type = Types::OverrideButtonConfiguration
    PayloadTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    PayloadTooLargeException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    PayloadTooLargeException.type = Types::PayloadTooLargeException
    PhoneNumberValidateRequest.add_member(:number_validate_request, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberValidateRequest, location_name: 'NumberValidateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PhoneNumberValidateRequest[:http_payload] = :number_validate_request
    PhoneNumberValidateRequest[:http_payload_member] = PhoneNumberValidateRequest.member(:number_validate_request)
    PhoneNumberValidateRequest.type = Types::PhoneNumberValidateRequest
    PhoneNumberValidateResponse.add_member(:number_validate_response, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberValidateResponse, location_name: 'NumberValidateResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PhoneNumberValidateResponse[:http_payload] = :number_validate_response
    PhoneNumberValidateResponse[:http_payload_member] = PhoneNumberValidateResponse.member(:number_validate_response)
    PhoneNumberValidateResponse.type = Types::PhoneNumberValidateResponse
    PublicEndpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recipient, such as a device token, email address, or mobile phone number.</p>"}))
    PublicEndpoint.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. You can use these attributes as filter criteria when you create segments.</p>"}))
    PublicEndpoint.add_member(:channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType', traits: {"smithy.api#documentation" => "<p>The channel that's used when sending messages or push notifications to the endpoint.</p>"}))
    PublicEndpoint.add_member(:demographic, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDemographic, location_name: 'Demographic', traits: {"smithy.api#documentation" => "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"}))
    PublicEndpoint.add_member(:effective_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EffectiveDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the endpoint was last updated.</p>"}))
    PublicEndpoint.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"}))
    PublicEndpoint.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointLocation, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The geographic information for the endpoint.</p>"}))
    PublicEndpoint.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfDouble, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"}))
    PublicEndpoint.add_member(:opt_out, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptOut', traits: {"smithy.api#documentation" => "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"}))
    PublicEndpoint.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>A unique identifier that's generated each time the endpoint is updated.</p>"}))
    PublicEndpoint.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointUser, location_name: 'User', traits: {"smithy.api#documentation" => "<p>One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.</p>"}))
    PublicEndpoint.type = Types::PublicEndpoint
    PushMessageActivity.add_member(:message_config, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyPushMessage, location_name: 'MessageConfig', traits: {"smithy.api#documentation" => "<p>Specifies the time to live (TTL) value for push notifications that are sent to participants in a journey.</p>"}))
    PushMessageActivity.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after the message is sent.</p>"}))
    PushMessageActivity.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the push notification template to use for the message. If specified, this value must match the name of an existing message template.</p>"}))
    PushMessageActivity.add_member(:template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the push notification template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"}))
    PushMessageActivity.type = Types::PushMessageActivity
    PushNotificationTemplateRequest.add_member(:adm, Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'ADM', traits: {"smithy.api#documentation" => "<p>The message template to use for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateRequest.add_member(:apns, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSPushNotificationTemplate, location_name: 'APNS', traits: {"smithy.api#documentation" => "<p>The message template to use for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateRequest.add_member(:baidu, Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'Baidu', traits: {"smithy.api#documentation" => "<p>The message template to use for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateRequest.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultPushNotificationTemplate, location_name: 'Default', traits: {"smithy.api#documentation" => "<p>The default message template to use for push notification channels.</p>"}))
    PushNotificationTemplateRequest.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"}))
    PushNotificationTemplateRequest.add_member(:gcm, Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'GCM', traits: {"smithy.api#documentation" => "<p>The message template to use for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateRequest.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>"}))
    PushNotificationTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<note><p>As of <b>22-05-2023</b> tags has been deprecated for update operations. After this date any value in tags is not processed and an error code is not returned. To manage tags we recommend using either <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/tags-resource-arn.html\">Tags</a> in the <i>API Reference for Amazon Pinpoint</i>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html\">resourcegroupstaggingapi</a> commands in the <i>AWS Command Line Interface Documentation</i> or <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/resourcegroupstaggingapi/package-summary.html\">resourcegroupstaggingapi</a> in the <i>AWS SDK</i>.</p></note> <p>(Deprecated) A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    PushNotificationTemplateRequest.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>A custom description of the message template.</p>"}))
    PushNotificationTemplateRequest.type = Types::PushNotificationTemplateRequest
    PushNotificationTemplateResponse.add_member(:adm, Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'ADM', traits: {"smithy.api#documentation" => "<p>The message template that's used for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateResponse.add_member(:apns, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSPushNotificationTemplate, location_name: 'APNS', traits: {"smithy.api#documentation" => "<p>The message template that's used for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>"}))
    PushNotificationTemplateResponse.add_member(:baidu, Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'Baidu', traits: {"smithy.api#documentation" => "<p>The message template that's used for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was created.</p>", "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultPushNotificationTemplate, location_name: 'Default', traits: {"smithy.api#documentation" => "<p>The default message template that's used for push notification channels.</p>"}))
    PushNotificationTemplateResponse.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"}))
    PushNotificationTemplateResponse.add_member(:gcm, Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPushNotificationTemplate, location_name: 'GCM', traits: {"smithy.api#documentation" => "<p>The message template that's used for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"}))
    PushNotificationTemplateResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was last modified.</p>", "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model that's used by the message template.</p>"}))
    PushNotificationTemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    PushNotificationTemplateResponse.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the message template.</p>"}))
    PushNotificationTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of channel that the message template is designed for. For a push notification template, this value is PUSH.</p>", "smithy.api#required" => {}}))
    PushNotificationTemplateResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"}))
    PushNotificationTemplateResponse.type = Types::PushNotificationTemplateResponse
    PutEventStreamRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventStreamRequest.add_member(:write_event_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteEventStream, location_name: 'WriteEventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventStreamRequest[:http_payload] = :write_event_stream
    PutEventStreamRequest[:http_payload_member] = PutEventStreamRequest.member(:write_event_stream)
    PutEventStreamRequest.type = Types::PutEventStreamRequest
    PutEventStreamResponse.add_member(:event_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: EventStream, location_name: 'EventStream', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventStreamResponse[:http_payload] = :event_stream
    PutEventStreamResponse[:http_payload_member] = PutEventStreamResponse.member(:event_stream)
    PutEventStreamResponse.type = Types::PutEventStreamResponse
    PutEventsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventsRequest.add_member(:events_request, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsRequest, location_name: 'EventsRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventsRequest[:http_payload] = :events_request
    PutEventsRequest[:http_payload_member] = PutEventsRequest.member(:events_request)
    PutEventsRequest.type = Types::PutEventsRequest
    PutEventsResponse.add_member(:events_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsResponse, location_name: 'EventsResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutEventsResponse[:http_payload] = :events_response
    PutEventsResponse[:http_payload_member] = PutEventsResponse.member(:events_response)
    PutEventsResponse.type = Types::PutEventsResponse
    QuietTime.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'End', traits: {"smithy.api#documentation" => "<p>The specific time when quiet time ends. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.</p>"}))
    QuietTime.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Start', traits: {"smithy.api#documentation" => "<p>The specific time when quiet time begins. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.</p>"}))
    QuietTime.type = Types::QuietTime
    RandomSplitActivity.add_member(:branches, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRandomSplitEntry, location_name: 'Branches', traits: {"smithy.api#documentation" => "<p>The paths for the activity, including the percentage of participants to enter each path and the activity to perform for each path.</p>"}))
    RandomSplitActivity.type = Types::RandomSplitActivity
    RandomSplitEntry.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after completing the activity for the path.</p>"}))
    RandomSplitEntry.add_member(:percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Percentage', traits: {"smithy.api#documentation" => "<p>The percentage of participants to send down the activity path.</p> <p>To determine which participants are sent down each path, Amazon Pinpoint applies a probability-based algorithm to the percentages that you specify for the paths. Therefore, the actual percentage of participants who are sent down a path may not be equal to the percentage that you specify.</p>"}))
    RandomSplitEntry.type = Types::RandomSplitEntry
    RawEmail.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The email message, represented as a raw MIME message. The entire message must be base64 encoded.</p>"}))
    RawEmail.type = Types::RawEmail
    RecencyDimension.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'Duration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The duration to use when determining whether an endpoint is active or inactive.</p>", "smithy.api#required" => {}}))
    RecencyDimension.add_member(:recency_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecencyType, location_name: 'RecencyType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of recency dimension to use for the segment. Valid values are: ACTIVE, endpoints that were active within the specified duration are included in the segment; and, INACTIVE, endpoints that weren't active within the specified duration are included in the segment.</p>", "smithy.api#required" => {}}))
    RecencyDimension.type = Types::RecencyDimension
    RecencyType.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RecencyType.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    RecommenderConfigurationResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>A map that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"}))
    RecommenderConfigurationResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in extended ISO 8601 format, when the configuration was created for the recommender model.</p>", "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The custom description of the configuration for the recommender model.</p>"}))
    RecommenderConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the recommender model configuration.</p>", "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in extended ISO 8601 format, when the configuration for the recommender model was last modified.</p>", "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The custom name of the configuration for the recommender model.</p>"}))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_id_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderIdType', traits: {"smithy.api#documentation" => "<p>The type of Amazon Pinpoint ID that's associated with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Possible values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Each user in the model is associated with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Each user in the model is associated with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If this value is specified, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>"}))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>", "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:recommendation_provider_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender model that Amazon Pinpoint retrieves the recommendation data from. This value is the ARN of an Amazon Personalize campaign.</p>", "smithy.api#required" => {}}))
    RecommenderConfigurationResponse.add_member(:recommendation_transformer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationTransformerUri', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to perform additional processing of recommendation data that it retrieves from the recommender model.</p>"}))
    RecommenderConfigurationResponse.add_member(:recommendations_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationsDisplayName', traits: {"smithy.api#documentation" => "<p>The custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console.</p> <p>This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"}))
    RecommenderConfigurationResponse.add_member(:recommendations_per_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RecommendationsPerMessage', traits: {"smithy.api#documentation" => "<p>The number of recommended items that are retrieved from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables.</p>"}))
    RecommenderConfigurationResponse.type = Types::RecommenderConfigurationResponse
    RemoveAttributesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAttributesRequest.add_member(:attribute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeType', traits: {"smithy.api#documentation" => "<p>The type of attribute or attributes to remove. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints, such as the date when an associated user opted in or out of receiving communications from you through a specific type of channel.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints, such as the number of app sessions or the number of items left in a cart.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users, such as first name, last name, and age.</p></li></ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAttributesRequest.add_member(:update_attributes_request, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAttributesRequest, location_name: 'UpdateAttributesRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    RemoveAttributesRequest[:http_payload] = :update_attributes_request
    RemoveAttributesRequest[:http_payload_member] = RemoveAttributesRequest.member(:update_attributes_request)
    RemoveAttributesRequest.type = Types::RemoveAttributesRequest
    RemoveAttributesResponse.add_member(:attributes_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesResource, location_name: 'AttributesResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    RemoveAttributesResponse[:http_payload] = :attributes_resource
    RemoveAttributesResponse[:http_payload_member] = RemoveAttributesResponse.member(:attributes_resource)
    RemoveAttributesResponse.type = Types::RemoveAttributesResponse
    ResultRow.add_member(:grouped_bys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfResultRowValue, location_name: 'GroupedBys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of objects that defines the field and field values that were used to group data in a result set that contains multiple results. This value is null if the data in a result set isn’t grouped.</p>", "smithy.api#required" => {}}))
    ResultRow.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfResultRowValue, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of objects that provides pre-aggregated values for a standard metric that applies to an application, campaign, or journey.</p>", "smithy.api#required" => {}}))
    ResultRow.type = Types::ResultRow
    ResultRowValue.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The friendly name of the metric whose value is specified by the Value property.</p>", "smithy.api#required" => {}}))
    ResultRowValue.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The data type of the value specified by the Value property.</p>", "smithy.api#required" => {}}))
    ResultRowValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>In a Values object, the value for the metric that the query retrieved data for. In a GroupedBys object, the value for the field that was used to group data in a result set that contains multiple results (Values objects).</p>", "smithy.api#required" => {}}))
    ResultRowValue.type = Types::ResultRowValue
    SMSChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the SMS channel for the application.</p>"}))
    SMSChannelRequest.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The identity that you want to display on recipients' devices when they receive messages from the SMS channel.</p>"}))
    SMSChannelRequest.add_member(:short_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ShortCode', traits: {"smithy.api#documentation" => "<p>The registered short code that you want to use when you send messages through the SMS channel.</p>"}))
    SMSChannelRequest.type = Types::SMSChannelRequest
    SMSChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the SMS channel applies to.</p>"}))
    SMSChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the SMS channel was enabled.</p>"}))
    SMSChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the SMS channel is enabled for the application.</p>"}))
    SMSChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    SMSChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the SMS channel. This property is retained only for backward compatibility.</p>"}))
    SMSChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the SMS channel is archived.</p>"}))
    SMSChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the SMS channel.</p>"}))
    SMSChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the SMS channel was last modified.</p>"}))
    SMSChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the SMS channel, this value is SMS.</p>", "smithy.api#required" => {}}))
    SMSChannelResponse.add_member(:promotional_messages_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PromotionalMessagesPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of promotional messages that you can send through the SMS channel each second.</p>"}))
    SMSChannelResponse.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The identity that displays on recipients' devices when they receive messages from the SMS channel.</p>"}))
    SMSChannelResponse.add_member(:short_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ShortCode', traits: {"smithy.api#documentation" => "<p>The registered short code to use when you send messages through the SMS channel.</p>"}))
    SMSChannelResponse.add_member(:transactional_messages_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TransactionalMessagesPerSecond', traits: {"smithy.api#documentation" => "<p>The maximum number of transactional messages that you can send through the SMS channel each second.</p>"}))
    SMSChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the SMS channel.</p>"}))
    SMSChannelResponse.type = Types::SMSChannelResponse
    SMSMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the SMS message.</p>"}))
    SMSMessage.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keyword', traits: {"smithy.api#documentation" => "<p>The SMS program name that you provided to AWS Support when you requested your dedicated number.</p>"}))
    SMSMessage.add_member(:media_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MediaUrl', traits: {"smithy.api#documentation" => "<p>This field is reserved for future use.</p>"}))
    SMSMessage.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>"}))
    SMSMessage.add_member(:origination_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber', traits: {"smithy.api#documentation" => "<p>The number to send the SMS message from. This value should be one of the dedicated long or short codes that's assigned to your AWS account. If you don't specify a long or short code, Amazon Pinpoint assigns a random long code to the SMS message and sends the message from that code.</p>"}))
    SMSMessage.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region.</p>"}))
    SMSMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The message variables to use in the SMS message. You can override the default variables with individual address variables.</p>"}))
    SMSMessage.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId', traits: {"smithy.api#documentation" => "<p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>"}))
    SMSMessage.add_member(:template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId', traits: {"smithy.api#documentation" => "<p>The template ID received from the regulatory body for sending SMS in your country.</p>"}))
    SMSMessage.type = Types::SMSMessage
    SMSMessageActivity.add_member(:message_config, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneySMSMessage, location_name: 'MessageConfig', traits: {"smithy.api#documentation" => "<p>Specifies the sender ID and message type for an SMS message that's sent to participants in a journey.</p>"}))
    SMSMessageActivity.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after the message is sent.</p>"}))
    SMSMessageActivity.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the SMS message template to use for the message. If specified, this value must match the name of an existing message template.</p>"}))
    SMSMessageActivity.add_member(:template_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateVersion', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the SMS template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"}))
    SMSMessageActivity.type = Types::SMSMessageActivity
    SMSTemplateRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The message body to use in text messages that are based on the message template.</p>"}))
    SMSTemplateRequest.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"}))
    SMSTemplateRequest.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>"}))
    SMSTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<note><p>As of <b>22-05-2023</b> tags has been deprecated for update operations. After this date any value in tags is not processed and an error code is not returned. To manage tags we recommend using either <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/tags-resource-arn.html\">Tags</a> in the <i>API Reference for Amazon Pinpoint</i>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html\">resourcegroupstaggingapi</a> commands in the <i>AWS Command Line Interface Documentation</i> or <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/resourcegroupstaggingapi/package-summary.html\">resourcegroupstaggingapi</a> in the <i>AWS SDK</i>.</p></note> <p>(Deprecated) A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    SMSTemplateRequest.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>A custom description of the message template.</p>"}))
    SMSTemplateRequest.type = Types::SMSTemplateRequest
    SMSTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>"}))
    SMSTemplateResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The message body that's used in text messages that are based on the message template.</p>"}))
    SMSTemplateResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was created.</p>", "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"}))
    SMSTemplateResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was last modified.</p>", "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model that's used by the message template.</p>"}))
    SMSTemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    SMSTemplateResponse.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the message template.</p>"}))
    SMSTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of channel that the message template is designed for. For an SMS template, this value is SMS.</p>", "smithy.api#required" => {}}))
    SMSTemplateResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"}))
    SMSTemplateResponse.type = Types::SMSTemplateResponse
    Schedule.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The scheduled time, in ISO 8601 format, when the campaign ended or will end.</p>"}))
    Schedule.add_member(:event_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignEventFilter, location_name: 'EventFilter', traits: {"smithy.api#documentation" => "<p>The type of event that causes the campaign to be sent, if the value of the Frequency property is EVENT.</p>"}))
    Schedule.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'Frequency', traits: {"smithy.api#documentation" => "<p>Specifies how often the campaign is sent or whether the campaign is sent in response to a specific event.</p>"}))
    Schedule.add_member(:is_local_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsLocalTime', traits: {"smithy.api#documentation" => "<p>Specifies whether the start and end times for the campaign schedule use each recipient's local time. To base the schedule on each recipient's local time, set this value to true.</p>"}))
    Schedule.add_member(:quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime', traits: {"smithy.api#documentation" => "<p>The default quiet time for the campaign. Quiet time is a specific time range when a campaign doesn't send messages to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the campaign.</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the campaign.</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from the campaign, even if quiet time is enabled.</p>"}))
    Schedule.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The scheduled time when the campaign began or will begin. Valid values are: IMMEDIATE, to start the campaign immediately; or, a specific time in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    Schedule.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>The starting UTC offset for the campaign schedule, if the value of the IsLocalTime property is true. Valid values are: UTC, UTC+01, UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05,\n                  UTC+05:30, UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+09, UTC+09:30,\n                  UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+13, UTC-02, UTC-03, UTC-04, UTC-05, UTC-06,\n                  UTC-07, UTC-08, UTC-09, UTC-10, and UTC-11.</p>"}))
    Schedule.type = Types::Schedule
    SegmentBehaviors.add_member(:recency, Smithy::Schema::Shapes::ShapeRef.new(shape: RecencyDimension, location_name: 'Recency', traits: {"smithy.api#documentation" => "<p>The dimension settings that are based on how recently an endpoint was active.</p>"}))
    SegmentBehaviors.type = Types::SegmentBehaviors
    SegmentCondition.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the segment to associate with the activity.</p>", "smithy.api#required" => {}}))
    SegmentCondition.type = Types::SegmentCondition
    SegmentDemographics.add_member(:app_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'AppVersion', traits: {"smithy.api#documentation" => "<p>The app version criteria for the segment.</p>"}))
    SegmentDemographics.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Channel', traits: {"smithy.api#documentation" => "<p>The channel criteria for the segment.</p>"}))
    SegmentDemographics.add_member(:device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'DeviceType', traits: {"smithy.api#documentation" => "<p>The device type criteria for the segment.</p>"}))
    SegmentDemographics.add_member(:make, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Make', traits: {"smithy.api#documentation" => "<p>The device make criteria for the segment.</p>"}))
    SegmentDemographics.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Model', traits: {"smithy.api#documentation" => "<p>The device model criteria for the segment.</p>"}))
    SegmentDemographics.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The device platform criteria for the segment.</p>"}))
    SegmentDemographics.type = Types::SegmentDemographics
    SegmentDimensions.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more custom attributes to use as criteria for the segment.</p>"}))
    SegmentDimensions.add_member(:behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentBehaviors, location_name: 'Behavior', traits: {"smithy.api#documentation" => "<p>The behavior-based criteria, such as how recently users have used your app, for the segment.</p>"}))
    SegmentDimensions.add_member(:demographic, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDemographics, location_name: 'Demographic', traits: {"smithy.api#documentation" => "<p>The demographic-based criteria, such as device platform, for the segment.</p>"}))
    SegmentDimensions.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentLocation, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The location-based criteria, such as region or GPS coordinates, for the segment.</p>"}))
    SegmentDimensions.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMetricDimension, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>One or more custom metrics to use as criteria for the segment.</p>"}))
    SegmentDimensions.add_member(:user_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfAttributeDimension, location_name: 'UserAttributes', traits: {"smithy.api#documentation" => "<p>One or more custom user attributes to use as criteria for the segment.</p>"}))
    SegmentDimensions.type = Types::SegmentDimensions
    SegmentGroup.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentDimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>An array that defines the dimensions for the segment.</p>"}))
    SegmentGroup.add_member(:source_segments, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentReference, location_name: 'SourceSegments', traits: {"smithy.api#documentation" => "<p>The base segment to build the segment on. A base segment, also referred to as a <i>source segment</i>, defines the initial population of endpoints for a segment. When you add dimensions to a segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.</p> <p>You can specify more than one dimensional segment or only one imported segment. If you specify an imported segment, the Amazon Pinpoint console displays a segment size estimate that indicates the size of the imported segment without any filters applied to it.</p>"}))
    SegmentGroup.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Specifies how to handle multiple base segments for the segment. For example, if you specify three base segments for the segment, whether the resulting segment is based on all, any, or none of the base segments.</p>"}))
    SegmentGroup.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specifies how to handle multiple dimensions for the segment. For example, if you specify three dimensions for the segment, whether the resulting segment includes endpoints that match all, any, or none of the dimensions.</p>"}))
    SegmentGroup.type = Types::SegmentGroup
    SegmentGroupList.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentGroup, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.</p>"}))
    SegmentGroupList.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: Include, location_name: 'Include', traits: {"smithy.api#documentation" => "<p>Specifies how to handle multiple segment groups for the segment. For example, if the segment includes three segment groups, whether the resulting segment includes endpoints that match all, any, or none of the segment groups.</p>"}))
    SegmentGroupList.type = Types::SegmentGroupList
    SegmentImportResource.add_member(:channel_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfInteger, location_name: 'ChannelCounts', traits: {"smithy.api#documentation" => "<p>The number of channel types in the endpoint definitions that were imported to create the segment.</p>"}))
    SegmentImportResource.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExternalId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>", "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The format of the files that were imported to create the segment. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format.</p>", "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorized Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>", "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:s3_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Url', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that the endpoint definitions were imported from to create the segment.</p>", "smithy.api#required" => {}}))
    SegmentImportResource.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The number of endpoint definitions that were imported successfully to create the segment.</p>", "smithy.api#required" => {}}))
    SegmentImportResource.type = Types::SegmentImportResource
    SegmentLocation.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: SetDimension, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The country or region code, in ISO 3166-1 alpha-2 format, for the segment.</p>"}))
    SegmentLocation.add_member(:gps_point, Smithy::Schema::Shapes::ShapeRef.new(shape: GPSPointDimension, location_name: 'GPSPoint', traits: {"smithy.api#documentation" => "<p>The GPS location and range for the segment.</p>"}))
    SegmentLocation.type = Types::SegmentLocation
    SegmentReference.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#required" => {}}))
    SegmentReference.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version number of the segment.</p>"}))
    SegmentReference.type = Types::SegmentReference
    SegmentResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that the segment is associated with.</p>", "smithy.api#required" => {}}))
    SegmentResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the segment.</p>", "smithy.api#required" => {}}))
    SegmentResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date and time when the segment was created.</p>", "smithy.api#required" => {}}))
    SegmentResponse.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>The dimension settings for the segment.</p>"}))
    SegmentResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#required" => {}}))
    SegmentResponse.add_member(:import_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentImportResource, location_name: 'ImportDefinition', traits: {"smithy.api#documentation" => "<p>The settings for the import job that's associated with the segment.</p>"}))
    SegmentResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the segment was last modified.</p>"}))
    SegmentResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the segment.</p>"}))
    SegmentResponse.add_member(:segment_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: 'SegmentGroups', traits: {"smithy.api#documentation" => "<p>A list of one or more segment groups that apply to the segment. Each segment group consists of zero or more base segments and the dimensions that are applied to those base segments.</p>"}))
    SegmentResponse.add_member(:segment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentType, location_name: 'SegmentType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The segment type. Valid values are:</p> <ul><li><p>DIMENSIONAL - A dynamic segment, which is a segment that uses selection criteria that you specify and is based on endpoint data that's reported by your app. Dynamic segments can change over time.</p></li> <li><p>IMPORT - A static segment, which is a segment that uses selection criteria that you specify and is based on endpoint definitions that you import from a file. Imported segments are static; they don't change over time.</p></li></ul>", "smithy.api#required" => {}}))
    SegmentResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the segment. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    SegmentResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version number of the segment.</p>"}))
    SegmentResponse.type = Types::SegmentResponse
    SegmentType.add_member(:dimensional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIMENSIONAL', traits: {"smithy.api#enumValue" => "DIMENSIONAL"}))
    SegmentType.add_member(:import, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT', traits: {"smithy.api#enumValue" => "IMPORT"}))
    SegmentsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSegmentResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each segment that's associated with the application (Segments resource) or each version of a segment that's associated with the application (Segment Versions resource).</p>", "smithy.api#required" => {}}))
    SegmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    SegmentsResponse.type = Types::SegmentsResponse
    SendMessagesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessagesRequest.add_member(:message_request, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRequest, location_name: 'MessageRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendMessagesRequest[:http_payload] = :message_request
    SendMessagesRequest[:http_payload_member] = SendMessagesRequest.member(:message_request)
    SendMessagesRequest.type = Types::SendMessagesRequest
    SendMessagesResponse.add_member(:message_response, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageResponse, location_name: 'MessageResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendMessagesResponse[:http_payload] = :message_response
    SendMessagesResponse[:http_payload_member] = SendMessagesResponse.member(:message_response)
    SendMessagesResponse.type = Types::SendMessagesResponse
    SendOTPMessageRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique ID of your Amazon Pinpoint application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequest.add_member(:send_otp_message_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SendOTPMessageRequestParameters, location_name: 'SendOTPMessageRequestParameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendOTPMessageRequest[:http_payload] = :send_otp_message_request_parameters
    SendOTPMessageRequest[:http_payload_member] = SendOTPMessageRequest.member(:send_otp_message_request_parameters)
    SendOTPMessageRequest.type = Types::SendOTPMessageRequest
    SendOTPMessageRequestParameters.add_member(:allowed_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AllowedAttempts', traits: {"smithy.api#documentation" => "<p>The attempts allowed to validate an OTP.</p>"}))
    SendOTPMessageRequestParameters.add_member(:brand_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrandName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The brand name that will be substituted into the OTP message body. Should be owned by calling AWS account.</p>", "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Channel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Channel type for the OTP message. Supported values: [SMS].</p>", "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:code_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CodeLength', traits: {"smithy.api#documentation" => "<p>The number of characters in the generated OTP.</p>"}))
    SendOTPMessageRequestParameters.add_member(:destination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationIdentity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The destination identity to send OTP to.</p>", "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EntityId', traits: {"smithy.api#documentation" => "<p>A unique Entity ID received from DLT after entity registration is approved.</p>"}))
    SendOTPMessageRequestParameters.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Language', traits: {"smithy.api#documentation" => "<p>The language to be used for the outgoing message body containing the OTP.</p>"}))
    SendOTPMessageRequestParameters.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationIdentity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The origination identity used to send OTP from.</p>", "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReferenceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Developer-specified reference identifier. Required to match during OTP verification.</p>", "smithy.api#required" => {}}))
    SendOTPMessageRequestParameters.add_member(:template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateId', traits: {"smithy.api#documentation" => "<p>A unique Template ID received from DLT after entity registration is approved.</p>"}))
    SendOTPMessageRequestParameters.add_member(:validity_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidityPeriod', traits: {"smithy.api#documentation" => "<p>The time in minutes before the OTP is no longer valid.</p>"}))
    SendOTPMessageRequestParameters.type = Types::SendOTPMessageRequestParameters
    SendOTPMessageResponse.add_member(:message_response, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageResponse, location_name: 'MessageResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendOTPMessageResponse[:http_payload] = :message_response
    SendOTPMessageResponse[:http_payload_member] = SendOTPMessageResponse.member(:message_response)
    SendOTPMessageResponse.type = Types::SendOTPMessageResponse
    SendUsersMessageRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>A map of custom attribute-value pairs. For a push notification, Amazon Pinpoint adds these attributes to the data.pinpoint object in the body of the notification payload. Amazon Pinpoint also provides these attributes in the events that it generates for users-messages deliveries.</p>"}))
    SendUsersMessageRequest.add_member(:message_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectMessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The settings and content for the default message and any default messages that you defined for specific channels.</p>", "smithy.api#required" => {}}))
    SendUsersMessageRequest.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration', traits: {"smithy.api#documentation" => "<p>The message template to use for the message.</p>"}))
    SendUsersMessageRequest.add_member(:trace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TraceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for tracing the message. This identifier is visible to message recipients.</p>"}))
    SendUsersMessageRequest.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfEndpointSendConfiguration, location_name: 'Users', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A map that associates user IDs with <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> objects. You can use an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> object to tailor the message for a user by specifying settings such as content overrides and message variables.</p>", "smithy.api#required" => {}}))
    SendUsersMessageRequest.type = Types::SendUsersMessageRequest
    SendUsersMessageResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the application that was used to send the message.</p>", "smithy.api#required" => {}}))
    SendUsersMessageResponse.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The unique identifier that was assigned to the message request.</p>"}))
    SendUsersMessageResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfMapOfEndpointMessageResult, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>An object that indicates which endpoints the message was sent to, for each user. The object lists user IDs and, for each user ID, provides the endpoint IDs that the message was sent to. For each endpoint ID, it provides an EndpointMessageResult object.</p>"}))
    SendUsersMessageResponse.type = Types::SendUsersMessageResponse
    SendUsersMessagesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendUsersMessagesRequest.add_member(:send_users_message_request, Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessageRequest, location_name: 'SendUsersMessageRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendUsersMessagesRequest[:http_payload] = :send_users_message_request
    SendUsersMessagesRequest[:http_payload_member] = SendUsersMessagesRequest.member(:send_users_message_request)
    SendUsersMessagesRequest.type = Types::SendUsersMessagesRequest
    SendUsersMessagesResponse.add_member(:send_users_message_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessageResponse, location_name: 'SendUsersMessageResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendUsersMessagesResponse[:http_payload] = :send_users_message_response
    SendUsersMessagesResponse[:http_payload_member] = SendUsersMessagesResponse.member(:send_users_message_response)
    SendUsersMessagesResponse.type = Types::SendUsersMessagesResponse
    Session.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The duration of the session, in milliseconds.</p>"}))
    Session.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the session.</p>", "smithy.api#required" => {}}))
    Session.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTimestamp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date and time when the session began.</p>", "smithy.api#required" => {}}))
    Session.add_member(:stop_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StopTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time when the session ended.</p>"}))
    Session.type = Types::Session
    SetDimension.add_member(:dimension_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionType, location_name: 'DimensionType', traits: {"smithy.api#documentation" => "<p>The type of segment dimension to use. Valid values are: INCLUSIVE, endpoints that match the criteria are included in the segment; and, EXCLUSIVE, endpoints that match the criteria are excluded from the segment.</p>"}))
    SetDimension.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria values to use for the segment dimension. Depending on the value of the DimensionType property, endpoints are included or excluded from the segment if their values match the criteria values.</p>", "smithy.api#required" => {}}))
    SetDimension.type = Types::SetDimension
    SimpleCondition.add_member(:event_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCondition, location_name: 'EventCondition', traits: {"smithy.api#documentation" => "<p>The dimension settings for the event that's associated with the activity.</p>"}))
    SimpleCondition.add_member(:segment_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentCondition, location_name: 'SegmentCondition', traits: {"smithy.api#documentation" => "<p>The segment that's associated with the activity.</p>"}))
    SimpleCondition.add_member(:segment_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: 'SegmentDimensions', traits: {"smithy.api#documentation" => "<p>The dimension settings for the segment that's associated with the activity.</p>", "smithy.api#jsonName" => "segmentDimensions"}))
    SimpleCondition.type = Types::SimpleCondition
    SimpleEmail.add_member(:html_part, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: 'HtmlPart', traits: {"smithy.api#documentation" => "<p>The body of the email message, in HTML format. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>"}))
    SimpleEmail.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line, or title, of the email.</p>"}))
    SimpleEmail.add_member(:text_part, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleEmailPart, location_name: 'TextPart', traits: {"smithy.api#documentation" => "<p>The body of the email message, in plain text format. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>"}))
    SimpleEmail.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMessageHeader, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>The list of MessageHeaders for the email. You can have up to 15 Headers.</p>"}))
    SimpleEmail.type = Types::SimpleEmail
    SimpleEmailPart.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The applicable character set for the message content.</p>"}))
    SimpleEmailPart.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The textual data of the message content.</p>"}))
    SimpleEmailPart.type = Types::SimpleEmailPart
    SourceType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    SourceType.add_member(:any, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    SourceType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    StartCondition.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The custom description of the condition.</p>"}))
    StartCondition.add_member(:event_start_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: EventStartCondition, location_name: 'EventStartCondition'))
    StartCondition.add_member(:segment_start_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentCondition, location_name: 'SegmentStartCondition', traits: {"smithy.api#documentation" => "<p>The segment that's associated with the first activity in the journey. This segment determines which users are participants in the journey.</p>"}))
    StartCondition.type = Types::StartCondition
    State.add_member(:draft, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    State.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    State.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    State.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    State.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    State.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags_model, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsModel, location_name: 'TagsModel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    TagResourceRequest[:http_payload] = :tags_model
    TagResourceRequest[:http_payload_member] = TagResourceRequest.member(:tags_model)
    TagResourceRequest.type = Types::TagResourceRequest
    TagsModel.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that defines the tags for an application, campaign, message template, or segment. Each of these resources can have a maximum of 50 tags.</p> <p>Each tag consists of a required tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagsModel.type = Types::TagsModel
    Template.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the message template to use for the message. If specified, this value must match the name of an existing message template.</p>"}))
    Template.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"}))
    Template.type = Types::Template
    TemplateActiveVersionRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the message template to use as the active version of the template. Valid values are: latest, for the most recent version of the template; or, the unique identifier for any existing version of the template. If you specify an identifier, the value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p>"}))
    TemplateActiveVersionRequest.type = Types::TemplateActiveVersionRequest
    TemplateConfiguration.add_member(:email_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'EmailTemplate', traits: {"smithy.api#documentation" => "<p>The email template to use for the message.</p>"}))
    TemplateConfiguration.add_member(:push_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'PushTemplate', traits: {"smithy.api#documentation" => "<p>The push notification template to use for the message.</p>"}))
    TemplateConfiguration.add_member(:sms_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'SMSTemplate', traits: {"smithy.api#documentation" => "<p>The SMS template to use for the message.</p>"}))
    TemplateConfiguration.add_member(:voice_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'VoiceTemplate', traits: {"smithy.api#documentation" => "<p>The voice template to use for the message. This object isn't supported for campaigns.</p>"}))
    TemplateConfiguration.add_member(:in_app_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'InAppTemplate', traits: {"smithy.api#documentation" => "<p>The InApp template to use for the message. The InApp template object is not supported for SendMessages.</p>"}))
    TemplateConfiguration.type = Types::TemplateConfiguration
    TemplateCreateMessageBody.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template that was created.</p>"}))
    TemplateCreateMessageBody.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API for the request to create the message template.</p>"}))
    TemplateCreateMessageBody.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request to create the message template.</p>"}))
    TemplateCreateMessageBody.type = Types::TemplateCreateMessageBody
    TemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template. This value isn't included in a TemplateResponse object. To retrieve the ARN of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the ARN for.</p>"}))
    TemplateResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was created.</p>", "smithy.api#required" => {}}))
    TemplateResponse.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.</p>"}))
    TemplateResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was last modified.</p>", "smithy.api#required" => {}}))
    TemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that identifies the tags that are associated with the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.</p>", "smithy.api#jsonName" => "tags"}))
    TemplateResponse.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the message template. This value isn't included in a TemplateResponse object. To retrieve the description of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the description for.</p>"}))
    TemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    TemplateResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, INAPP, and VOICE.</p>", "smithy.api#required" => {}}))
    TemplateResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier, as an integer, for the active version of the message template.</p>"}))
    TemplateResponse.type = Types::TemplateResponse
    TemplateType.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    TemplateType.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    TemplateType.add_member(:voice, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE', traits: {"smithy.api#enumValue" => "VOICE"}))
    TemplateType.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUSH', traits: {"smithy.api#enumValue" => "PUSH"}))
    TemplateType.add_member(:inapp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INAPP', traits: {"smithy.api#enumValue" => "INAPP"}))
    TemplateVersionResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the version of the message template was created.</p>", "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>A JSON object that specifies the default values that are used for message variables in the version of the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"}))
    TemplateVersionResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the version of the message template was last modified.</p>", "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the version of the message template.</p>"}))
    TemplateVersionResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, INAPP, and VOICE.</p>", "smithy.api#required" => {}}))
    TemplateVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template. This value is an integer that Amazon Pinpoint automatically increments and assigns to each new version of a template.</p>"}))
    TemplateVersionResponse.type = Types::TemplateVersionResponse
    TemplateVersionsResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTemplateVersionResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each version of the message template.</p>", "smithy.api#required" => {}}))
    TemplateVersionsResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API for the request to retrieve information about all the versions of the message template.</p>"}))
    TemplateVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    TemplateVersionsResponse.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request to retrieve information about all the versions of the message template.</p>"}))
    TemplateVersionsResponse.type = Types::TemplateVersionsResponse
    TemplatesResponse.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTemplateResponse, location_name: 'Item', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of responses, one for each message template that's associated with your Amazon Pinpoint account and meets any filter criteria that you specified in the request.</p>", "smithy.api#required" => {}}))
    TemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"}))
    TemplatesResponse.type = Types::TemplatesResponse
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that's returned from the API.</p>"}))
    TooManyRequestsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestID', traits: {"smithy.api#documentation" => "<p>The unique identifier for the request or response.</p>"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TreatmentResource.add_member(:custom_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.</p>"}))
    TreatmentResource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the treatment.</p>", "smithy.api#required" => {}}))
    TreatmentResource.add_member(:message_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#documentation" => "<p>The message configuration settings for the treatment.</p>"}))
    TreatmentResource.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule settings for the treatment.</p>"}))
    TreatmentResource.add_member(:size_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SizePercent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The allocated percentage of users (segment members) that the treatment is sent to.</p>", "smithy.api#required" => {}}))
    TreatmentResource.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the treatment.</p>"}))
    TreatmentResource.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration', traits: {"smithy.api#documentation" => "<p>The message template to use for the treatment.</p>"}))
    TreatmentResource.add_member(:treatment_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the treatment.</p>"}))
    TreatmentResource.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName', traits: {"smithy.api#documentation" => "<p>The custom name of the treatment.</p>"}))
    TreatmentResource.type = Types::TreatmentResource
    Type.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    Type.add_member(:any, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    Type.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;).</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAdmChannelRequest.add_member(:adm_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelRequest, location_name: 'ADMChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateAdmChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAdmChannelRequest[:http_payload] = :adm_channel_request
    UpdateAdmChannelRequest[:http_payload_member] = UpdateAdmChannelRequest.member(:adm_channel_request)
    UpdateAdmChannelRequest.type = Types::UpdateAdmChannelRequest
    UpdateAdmChannelResponse.add_member(:adm_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ADMChannelResponse, location_name: 'ADMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateAdmChannelResponse[:http_payload] = :adm_channel_response
    UpdateAdmChannelResponse[:http_payload_member] = UpdateAdmChannelResponse.member(:adm_channel_response)
    UpdateAdmChannelResponse.type = Types::UpdateAdmChannelResponse
    UpdateApnsChannelRequest.add_member(:apns_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelRequest, location_name: 'APNSChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsChannelRequest[:http_payload] = :apns_channel_request
    UpdateApnsChannelRequest[:http_payload_member] = UpdateApnsChannelRequest.member(:apns_channel_request)
    UpdateApnsChannelRequest.type = Types::UpdateApnsChannelRequest
    UpdateApnsChannelResponse.add_member(:apns_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSChannelResponse, location_name: 'APNSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsChannelResponse[:http_payload] = :apns_channel_response
    UpdateApnsChannelResponse[:http_payload_member] = UpdateApnsChannelResponse.member(:apns_channel_response)
    UpdateApnsChannelResponse.type = Types::UpdateApnsChannelResponse
    UpdateApnsSandboxChannelRequest.add_member(:apns_sandbox_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelRequest, location_name: 'APNSSandboxChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsSandboxChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsSandboxChannelRequest[:http_payload] = :apns_sandbox_channel_request
    UpdateApnsSandboxChannelRequest[:http_payload_member] = UpdateApnsSandboxChannelRequest.member(:apns_sandbox_channel_request)
    UpdateApnsSandboxChannelRequest.type = Types::UpdateApnsSandboxChannelRequest
    UpdateApnsSandboxChannelResponse.add_member(:apns_sandbox_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSSandboxChannelResponse, location_name: 'APNSSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsSandboxChannelResponse[:http_payload] = :apns_sandbox_channel_response
    UpdateApnsSandboxChannelResponse[:http_payload_member] = UpdateApnsSandboxChannelResponse.member(:apns_sandbox_channel_response)
    UpdateApnsSandboxChannelResponse.type = Types::UpdateApnsSandboxChannelResponse
    UpdateApnsVoipChannelRequest.add_member(:apns_voip_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelRequest, location_name: 'APNSVoipChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipChannelRequest[:http_payload] = :apns_voip_channel_request
    UpdateApnsVoipChannelRequest[:http_payload_member] = UpdateApnsVoipChannelRequest.member(:apns_voip_channel_request)
    UpdateApnsVoipChannelRequest.type = Types::UpdateApnsVoipChannelRequest
    UpdateApnsVoipChannelResponse.add_member(:apns_voip_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipChannelResponse, location_name: 'APNSVoipChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipChannelResponse[:http_payload] = :apns_voip_channel_response
    UpdateApnsVoipChannelResponse[:http_payload_member] = UpdateApnsVoipChannelResponse.member(:apns_voip_channel_response)
    UpdateApnsVoipChannelResponse.type = Types::UpdateApnsVoipChannelResponse
    UpdateApnsVoipSandboxChannelRequest.add_member(:apns_voip_sandbox_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelRequest, location_name: 'APNSVoipSandboxChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipSandboxChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipSandboxChannelRequest[:http_payload] = :apns_voip_sandbox_channel_request
    UpdateApnsVoipSandboxChannelRequest[:http_payload_member] = UpdateApnsVoipSandboxChannelRequest.member(:apns_voip_sandbox_channel_request)
    UpdateApnsVoipSandboxChannelRequest.type = Types::UpdateApnsVoipSandboxChannelRequest
    UpdateApnsVoipSandboxChannelResponse.add_member(:apns_voip_sandbox_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: APNSVoipSandboxChannelResponse, location_name: 'APNSVoipSandboxChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApnsVoipSandboxChannelResponse[:http_payload] = :apns_voip_sandbox_channel_response
    UpdateApnsVoipSandboxChannelResponse[:http_payload_member] = UpdateApnsVoipSandboxChannelResponse.member(:apns_voip_sandbox_channel_response)
    UpdateApnsVoipSandboxChannelResponse.type = Types::UpdateApnsVoipSandboxChannelResponse
    UpdateApplicationSettingsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationSettingsRequest.add_member(:write_application_settings_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteApplicationSettingsRequest, location_name: 'WriteApplicationSettingsRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApplicationSettingsRequest[:http_payload] = :write_application_settings_request
    UpdateApplicationSettingsRequest[:http_payload_member] = UpdateApplicationSettingsRequest.member(:write_application_settings_request)
    UpdateApplicationSettingsRequest.type = Types::UpdateApplicationSettingsRequest
    UpdateApplicationSettingsResponse.add_member(:application_settings_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsResource, location_name: 'ApplicationSettingsResource', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateApplicationSettingsResponse[:http_payload] = :application_settings_resource
    UpdateApplicationSettingsResponse[:http_payload_member] = UpdateApplicationSettingsResponse.member(:application_settings_resource)
    UpdateApplicationSettingsResponse.type = Types::UpdateApplicationSettingsResponse
    UpdateAttributesRequest.add_member(:blacklist, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Blacklist', traits: {"smithy.api#documentation" => "<p>An array of the attributes to remove from all the endpoints that are associated with the application. The array can specify the complete, exact name of each attribute to remove or it can specify a glob pattern that an attribute name must match in order for the attribute to be removed.</p>"}))
    UpdateAttributesRequest.type = Types::UpdateAttributesRequest
    UpdateBaiduChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBaiduChannelRequest.add_member(:baidu_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelRequest, location_name: 'BaiduChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateBaiduChannelRequest[:http_payload] = :baidu_channel_request
    UpdateBaiduChannelRequest[:http_payload_member] = UpdateBaiduChannelRequest.member(:baidu_channel_request)
    UpdateBaiduChannelRequest.type = Types::UpdateBaiduChannelRequest
    UpdateBaiduChannelResponse.add_member(:baidu_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BaiduChannelResponse, location_name: 'BaiduChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateBaiduChannelResponse[:http_payload] = :baidu_channel_response
    UpdateBaiduChannelResponse[:http_payload_member] = UpdateBaiduChannelResponse.member(:baidu_channel_response)
    UpdateBaiduChannelResponse.type = Types::UpdateBaiduChannelResponse
    UpdateCampaignRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignRequest.add_member(:write_campaign_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteCampaignRequest, location_name: 'WriteCampaignRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateCampaignRequest[:http_payload] = :write_campaign_request
    UpdateCampaignRequest[:http_payload_member] = UpdateCampaignRequest.member(:write_campaign_request)
    UpdateCampaignRequest.type = Types::UpdateCampaignRequest
    UpdateCampaignResponse.add_member(:campaign_response, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignResponse, location_name: 'CampaignResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateCampaignResponse[:http_payload] = :campaign_response
    UpdateCampaignResponse[:http_payload_member] = UpdateCampaignResponse.member(:campaign_response)
    UpdateCampaignResponse.type = Types::UpdateCampaignResponse
    UpdateEmailChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailChannelRequest.add_member(:email_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelRequest, location_name: 'EmailChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailChannelRequest[:http_payload] = :email_channel_request
    UpdateEmailChannelRequest[:http_payload_member] = UpdateEmailChannelRequest.member(:email_channel_request)
    UpdateEmailChannelRequest.type = Types::UpdateEmailChannelRequest
    UpdateEmailChannelResponse.add_member(:email_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelResponse, location_name: 'EmailChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailChannelResponse[:http_payload] = :email_channel_response
    UpdateEmailChannelResponse[:http_payload_member] = UpdateEmailChannelResponse.member(:email_channel_response)
    UpdateEmailChannelResponse.type = Types::UpdateEmailChannelResponse
    UpdateEmailTemplateRequest.add_member(:create_new_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#documentation" => "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>", "smithy.api#httpQuery" => "create-new-version"}))
    UpdateEmailTemplateRequest.add_member(:email_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateRequest, location_name: 'EmailTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    UpdateEmailTemplateRequest[:http_payload] = :email_template_request
    UpdateEmailTemplateRequest[:http_payload_member] = UpdateEmailTemplateRequest.member(:email_template_request)
    UpdateEmailTemplateRequest.type = Types::UpdateEmailTemplateRequest
    UpdateEmailTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateResponse[:http_payload] = :message_body
    UpdateEmailTemplateResponse[:http_payload_member] = UpdateEmailTemplateResponse.member(:message_body)
    UpdateEmailTemplateResponse.type = Types::UpdateEmailTemplateResponse
    UpdateEndpointRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEndpointRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The case insensitive unique identifier for the endpoint. The identifier can't contain <code>$</code>, <code>{</code> or <code>}</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEndpointRequest.add_member(:endpoint_request, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointRequest, location_name: 'EndpointRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointRequest[:http_payload] = :endpoint_request
    UpdateEndpointRequest[:http_payload_member] = UpdateEndpointRequest.member(:endpoint_request)
    UpdateEndpointRequest.type = Types::UpdateEndpointRequest
    UpdateEndpointResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointResponse[:http_payload] = :message_body
    UpdateEndpointResponse[:http_payload_member] = UpdateEndpointResponse.member(:message_body)
    UpdateEndpointResponse.type = Types::UpdateEndpointResponse
    UpdateEndpointsBatchRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEndpointsBatchRequest.add_member(:endpoint_batch_request, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointBatchRequest, location_name: 'EndpointBatchRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointsBatchRequest[:http_payload] = :endpoint_batch_request
    UpdateEndpointsBatchRequest[:http_payload_member] = UpdateEndpointsBatchRequest.member(:endpoint_batch_request)
    UpdateEndpointsBatchRequest.type = Types::UpdateEndpointsBatchRequest
    UpdateEndpointsBatchResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateEndpointsBatchResponse[:http_payload] = :message_body
    UpdateEndpointsBatchResponse[:http_payload_member] = UpdateEndpointsBatchResponse.member(:message_body)
    UpdateEndpointsBatchResponse.type = Types::UpdateEndpointsBatchResponse
    UpdateGcmChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGcmChannelRequest.add_member(:gcm_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelRequest, location_name: 'GCMChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateGcmChannelRequest[:http_payload] = :gcm_channel_request
    UpdateGcmChannelRequest[:http_payload_member] = UpdateGcmChannelRequest.member(:gcm_channel_request)
    UpdateGcmChannelRequest.type = Types::UpdateGcmChannelRequest
    UpdateGcmChannelResponse.add_member(:gcm_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: GCMChannelResponse, location_name: 'GCMChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateGcmChannelResponse[:http_payload] = :gcm_channel_response
    UpdateGcmChannelResponse[:http_payload_member] = UpdateGcmChannelResponse.member(:gcm_channel_response)
    UpdateGcmChannelResponse.type = Types::UpdateGcmChannelResponse
    UpdateInAppTemplateRequest.add_member(:create_new_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#documentation" => "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>", "smithy.api#httpQuery" => "create-new-version"}))
    UpdateInAppTemplateRequest.add_member(:in_app_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: InAppTemplateRequest, location_name: 'InAppTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateInAppTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInAppTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    UpdateInAppTemplateRequest[:http_payload] = :in_app_template_request
    UpdateInAppTemplateRequest[:http_payload_member] = UpdateInAppTemplateRequest.member(:in_app_template_request)
    UpdateInAppTemplateRequest.type = Types::UpdateInAppTemplateRequest
    UpdateInAppTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateInAppTemplateResponse[:http_payload] = :message_body
    UpdateInAppTemplateResponse[:http_payload_member] = UpdateInAppTemplateResponse.member(:message_body)
    UpdateInAppTemplateResponse.type = Types::UpdateInAppTemplateResponse
    UpdateJourneyRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyRequest.add_member(:write_journey_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteJourneyRequest, location_name: 'WriteJourneyRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyRequest[:http_payload] = :write_journey_request
    UpdateJourneyRequest[:http_payload_member] = UpdateJourneyRequest.member(:write_journey_request)
    UpdateJourneyRequest.type = Types::UpdateJourneyRequest
    UpdateJourneyResponse.add_member(:journey_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyResponse[:http_payload] = :journey_response
    UpdateJourneyResponse[:http_payload_member] = UpdateJourneyResponse.member(:journey_response)
    UpdateJourneyResponse.type = Types::UpdateJourneyResponse
    UpdateJourneyStateRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateRequest.add_member(:journey_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JourneyId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the journey.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateRequest.add_member(:journey_state_request, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyStateRequest, location_name: 'JourneyStateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateRequest[:http_payload] = :journey_state_request
    UpdateJourneyStateRequest[:http_payload_member] = UpdateJourneyStateRequest.member(:journey_state_request)
    UpdateJourneyStateRequest.type = Types::UpdateJourneyStateRequest
    UpdateJourneyStateResponse.add_member(:journey_response, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyResponse, location_name: 'JourneyResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateJourneyStateResponse[:http_payload] = :journey_response
    UpdateJourneyStateResponse[:http_payload_member] = UpdateJourneyStateResponse.member(:journey_response)
    UpdateJourneyStateResponse.type = Types::UpdateJourneyStateResponse
    UpdatePushTemplateRequest.add_member(:create_new_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#documentation" => "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>", "smithy.api#httpQuery" => "create-new-version"}))
    UpdatePushTemplateRequest.add_member(:push_notification_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationTemplateRequest, location_name: 'PushNotificationTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdatePushTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePushTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    UpdatePushTemplateRequest[:http_payload] = :push_notification_template_request
    UpdatePushTemplateRequest[:http_payload_member] = UpdatePushTemplateRequest.member(:push_notification_template_request)
    UpdatePushTemplateRequest.type = Types::UpdatePushTemplateRequest
    UpdatePushTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdatePushTemplateResponse[:http_payload] = :message_body
    UpdatePushTemplateResponse[:http_payload_member] = UpdatePushTemplateResponse.member(:message_body)
    UpdatePushTemplateResponse.type = Types::UpdatePushTemplateResponse
    UpdateRecommenderConfigurationRequest.add_member(:recommender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationRequest.add_member(:update_recommender_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationShape, location_name: 'UpdateRecommenderConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationRequest[:http_payload] = :update_recommender_configuration
    UpdateRecommenderConfigurationRequest[:http_payload_member] = UpdateRecommenderConfigurationRequest.member(:update_recommender_configuration)
    UpdateRecommenderConfigurationRequest.type = Types::UpdateRecommenderConfigurationRequest
    UpdateRecommenderConfigurationResponse.add_member(:recommender_configuration_response, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfigurationResponse, location_name: 'RecommenderConfigurationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationResponse[:http_payload] = :recommender_configuration_response
    UpdateRecommenderConfigurationResponse[:http_payload_member] = UpdateRecommenderConfigurationResponse.member(:recommender_configuration_response)
    UpdateRecommenderConfigurationResponse.type = Types::UpdateRecommenderConfigurationResponse
    UpdateRecommenderConfigurationShape.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:</p> <ul><li><p>An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.</p></li> <li><p>An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p></li></ul> <p>This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.</p>"}))
    UpdateRecommenderConfigurationShape.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.</p>"}))
    UpdateRecommenderConfigurationShape.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p>"}))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_provider_id_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderIdType', traits: {"smithy.api#documentation" => "<p>The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>"}))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_provider_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>", "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_provider_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationProviderUri', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.</p>", "smithy.api#required" => {}}))
    UpdateRecommenderConfigurationShape.add_member(:recommendation_transformer_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationTransformerUri', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.</p>"}))
    UpdateRecommenderConfigurationShape.add_member(:recommendations_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationsDisplayName', traits: {"smithy.api#documentation" => "<p>A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p> <p>This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.</p>"}))
    UpdateRecommenderConfigurationShape.add_member(:recommendations_per_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RecommendationsPerMessage', traits: {"smithy.api#documentation" => "<p>The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5.</p> <p>To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"}))
    UpdateRecommenderConfigurationShape.type = Types::UpdateRecommenderConfigurationShape
    UpdateSegmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSegmentRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSegmentRequest.add_member(:write_segment_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WriteSegmentRequest, location_name: 'WriteSegmentRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSegmentRequest[:http_payload] = :write_segment_request
    UpdateSegmentRequest[:http_payload_member] = UpdateSegmentRequest.member(:write_segment_request)
    UpdateSegmentRequest.type = Types::UpdateSegmentRequest
    UpdateSegmentResponse.add_member(:segment_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentResponse, location_name: 'SegmentResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSegmentResponse[:http_payload] = :segment_response
    UpdateSegmentResponse[:http_payload_member] = UpdateSegmentResponse.member(:segment_response)
    UpdateSegmentResponse.type = Types::UpdateSegmentResponse
    UpdateSmsChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSmsChannelRequest.add_member(:sms_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelRequest, location_name: 'SMSChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsChannelRequest[:http_payload] = :sms_channel_request
    UpdateSmsChannelRequest[:http_payload_member] = UpdateSmsChannelRequest.member(:sms_channel_request)
    UpdateSmsChannelRequest.type = Types::UpdateSmsChannelRequest
    UpdateSmsChannelResponse.add_member(:sms_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSChannelResponse, location_name: 'SMSChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsChannelResponse[:http_payload] = :sms_channel_response
    UpdateSmsChannelResponse[:http_payload_member] = UpdateSmsChannelResponse.member(:sms_channel_response)
    UpdateSmsChannelResponse.type = Types::UpdateSmsChannelResponse
    UpdateSmsTemplateRequest.add_member(:create_new_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#documentation" => "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>", "smithy.api#httpQuery" => "create-new-version"}))
    UpdateSmsTemplateRequest.add_member(:sms_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSTemplateRequest, location_name: 'SMSTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSmsTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    UpdateSmsTemplateRequest[:http_payload] = :sms_template_request
    UpdateSmsTemplateRequest[:http_payload_member] = UpdateSmsTemplateRequest.member(:sms_template_request)
    UpdateSmsTemplateRequest.type = Types::UpdateSmsTemplateRequest
    UpdateSmsTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSmsTemplateResponse[:http_payload] = :message_body
    UpdateSmsTemplateResponse[:http_payload_member] = UpdateSmsTemplateResponse.member(:message_body)
    UpdateSmsTemplateResponse.type = Types::UpdateSmsTemplateResponse
    UpdateTemplateActiveVersionRequest.add_member(:template_active_version_request, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateActiveVersionRequest, location_name: 'TemplateActiveVersionRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionRequest.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateType', traits: {"smithy.api#documentation" => "<p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>", "smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[^a-z]*$", "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionRequest[:http_payload] = :template_active_version_request
    UpdateTemplateActiveVersionRequest[:http_payload_member] = UpdateTemplateActiveVersionRequest.member(:template_active_version_request)
    UpdateTemplateActiveVersionRequest.type = Types::UpdateTemplateActiveVersionRequest
    UpdateTemplateActiveVersionResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateTemplateActiveVersionResponse[:http_payload] = :message_body
    UpdateTemplateActiveVersionResponse[:http_payload_member] = UpdateTemplateActiveVersionResponse.member(:message_body)
    UpdateTemplateActiveVersionResponse.type = Types::UpdateTemplateActiveVersionResponse
    UpdateVoiceChannelRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceChannelRequest.add_member(:voice_channel_request, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelRequest, location_name: 'VoiceChannelRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceChannelRequest[:http_payload] = :voice_channel_request
    UpdateVoiceChannelRequest[:http_payload_member] = UpdateVoiceChannelRequest.member(:voice_channel_request)
    UpdateVoiceChannelRequest.type = Types::UpdateVoiceChannelRequest
    UpdateVoiceChannelResponse.add_member(:voice_channel_response, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceChannelResponse, location_name: 'VoiceChannelResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceChannelResponse[:http_payload] = :voice_channel_response
    UpdateVoiceChannelResponse[:http_payload_member] = UpdateVoiceChannelResponse.member(:voice_channel_response)
    UpdateVoiceChannelResponse.type = Types::UpdateVoiceChannelResponse
    UpdateVoiceTemplateRequest.add_member(:create_new_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CreateNewVersion', traits: {"smithy.api#documentation" => "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>", "smithy.api#httpQuery" => "create-new-version"}))
    UpdateVoiceTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceTemplateRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>", "smithy.api#httpQuery" => "version"}))
    UpdateVoiceTemplateRequest.add_member(:voice_template_request, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceTemplateRequest, location_name: 'VoiceTemplateRequest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceTemplateRequest[:http_payload] = :voice_template_request
    UpdateVoiceTemplateRequest[:http_payload_member] = UpdateVoiceTemplateRequest.member(:voice_template_request)
    UpdateVoiceTemplateRequest.type = Types::UpdateVoiceTemplateRequest
    UpdateVoiceTemplateResponse.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'MessageBody', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVoiceTemplateResponse[:http_payload] = :message_body
    UpdateVoiceTemplateResponse[:http_payload_member] = UpdateVoiceTemplateResponse.member(:message_body)
    UpdateVoiceTemplateResponse.type = Types::UpdateVoiceTemplateResponse
    VerificationResponse.add_member(:valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Valid', traits: {"smithy.api#documentation" => "<p>Specifies whether the OTP is valid or not.</p>"}))
    VerificationResponse.type = Types::VerificationResponse
    VerifyOTPMessageRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique ID of your Amazon Pinpoint application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageRequest.add_member(:verify_otp_message_request_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyOTPMessageRequestParameters, location_name: 'VerifyOTPMessageRequestParameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageRequest[:http_payload] = :verify_otp_message_request_parameters
    VerifyOTPMessageRequest[:http_payload_member] = VerifyOTPMessageRequest.member(:verify_otp_message_request_parameters)
    VerifyOTPMessageRequest.type = Types::VerifyOTPMessageRequest
    VerifyOTPMessageRequestParameters.add_member(:destination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationIdentity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The destination identity to send OTP to.</p>", "smithy.api#required" => {}}))
    VerifyOTPMessageRequestParameters.add_member(:otp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Otp', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The OTP the end user provided for verification.</p>", "smithy.api#required" => {}}))
    VerifyOTPMessageRequestParameters.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReferenceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The reference identifier provided when the OTP was previously sent.</p>", "smithy.api#required" => {}}))
    VerifyOTPMessageRequestParameters.type = Types::VerifyOTPMessageRequestParameters
    VerifyOTPMessageResponse.add_member(:verification_response, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationResponse, location_name: 'VerificationResponse', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    VerifyOTPMessageResponse[:http_payload] = :verification_response
    VerifyOTPMessageResponse[:http_payload_member] = VerifyOTPMessageResponse.member(:verification_response)
    VerifyOTPMessageResponse.type = Types::VerifyOTPMessageResponse
    VoiceChannelRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the voice channel for the application.</p>"}))
    VoiceChannelRequest.type = Types::VoiceChannelRequest
    VoiceChannelResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the application that the voice channel applies to.</p>"}))
    VoiceChannelResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the voice channel was enabled.</p>"}))
    VoiceChannelResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the voice channel is enabled for the application.</p>"}))
    VoiceChannelResponse.add_member(:has_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCredential', traits: {"smithy.api#documentation" => "<p>(Not used) This property is retained only for backward compatibility.</p>"}))
    VoiceChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>(Deprecated) An identifier for the voice channel. This property is retained only for backward compatibility.</p>"}))
    VoiceChannelResponse.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsArchived', traits: {"smithy.api#documentation" => "<p>Specifies whether the voice channel is archived.</p>"}))
    VoiceChannelResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The user who last modified the voice channel.</p>"}))
    VoiceChannelResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when the voice channel was last modified.</p>"}))
    VoiceChannelResponse.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of messaging or notification platform for the channel. For the voice channel, this value is VOICE.</p>", "smithy.api#required" => {}}))
    VoiceChannelResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the voice channel.</p>"}))
    VoiceChannelResponse.type = Types::VoiceChannelResponse
    VoiceMessage.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The text of the script to use for the voice message.</p>"}))
    VoiceMessage.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The code for the language to use when synthesizing the text of the message script. For a list of supported languages and the code for each one, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"}))
    VoiceMessage.add_member(:origination_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginationNumber', traits: {"smithy.api#documentation" => "<p>The long code to send the voice message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code in E.164 format, for example +12065550100, to ensure prompt and accurate delivery of the message.</p>"}))
    VoiceMessage.add_member(:substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfListOfString, location_name: 'Substitutions', traits: {"smithy.api#documentation" => "<p>The default message variables to use in the voice message. You can override the default variables with individual address variables.</p>"}))
    VoiceMessage.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VoiceId', traits: {"smithy.api#documentation" => "<p>The name of the voice to use when delivering the message. For a list of supported voices, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"}))
    VoiceMessage.type = Types::VoiceMessage
    VoiceTemplateRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The text of the script to use in messages that are based on the message template, in plain text format.</p>"}))
    VoiceTemplateRequest.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"}))
    VoiceTemplateRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The code for the language to use when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"}))
    VoiceTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<note><p>As of <b>22-05-2023</b> tags has been deprecated for update operations. After this date any value in tags is not processed and an error code is not returned. To manage tags we recommend using either <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/tags-resource-arn.html\">Tags</a> in the <i>API Reference for Amazon Pinpoint</i>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html\">resourcegroupstaggingapi</a> commands in the <i>AWS Command Line Interface Documentation</i> or <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/resourcegroupstaggingapi/package-summary.html\">resourcegroupstaggingapi</a> in the <i>AWS SDK</i>.</p></note> <p>(Deprecated) A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    VoiceTemplateRequest.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>A custom description of the message template.</p>"}))
    VoiceTemplateRequest.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VoiceId', traits: {"smithy.api#documentation" => "<p>The name of the voice to use when delivering messages that are based on the message template. For a list of supported voices, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"}))
    VoiceTemplateRequest.type = Types::VoiceTemplateRequest
    VoiceTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>"}))
    VoiceTemplateResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The text of the script that's used in messages that are based on the message template, in plain text format.</p>"}))
    VoiceTemplateResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was created.</p>", "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:default_substitutions, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubstitutions', traits: {"smithy.api#documentation" => "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"}))
    VoiceTemplateResponse.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The code for the language that's used when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"}))
    VoiceTemplateResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the message template was last modified.</p>", "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    VoiceTemplateResponse.add_member(:template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateDescription', traits: {"smithy.api#documentation" => "<p>The custom description of the message template.</p>"}))
    VoiceTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TemplateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of channel that the message template is designed for. For a voice template, this value is VOICE.</p>", "smithy.api#required" => {}}))
    VoiceTemplateResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"}))
    VoiceTemplateResponse.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VoiceId', traits: {"smithy.api#documentation" => "<p>The name of the voice that's used when delivering messages that are based on the message template. For a list of supported voices, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"}))
    VoiceTemplateResponse.type = Types::VoiceTemplateResponse
    WaitActivity.add_member(:next_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the next activity to perform, after performing the wait activity.</p>"}))
    WaitActivity.add_member(:wait_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTime, location_name: 'WaitTime', traits: {"smithy.api#documentation" => "<p>The amount of time to wait or the date and time when the activity moves participants to the next activity in the journey.</p>"}))
    WaitActivity.type = Types::WaitActivity
    WaitTime.add_member(:wait_for, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WaitFor', traits: {"smithy.api#documentation" => "<p>The amount of time to wait, as a duration in ISO 8601 format, before determining whether the activity's conditions have been met or moving participants to the next activity in the journey.</p>"}))
    WaitTime.add_member(:wait_until, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WaitUntil', traits: {"smithy.api#documentation" => "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint determines whether the activity's conditions have been met or the activity moves participants to the next activity in the journey.</p>"}))
    WaitTime.type = Types::WaitTime
    WriteApplicationSettingsRequest.add_member(:campaign_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'CampaignHook', traits: {"smithy.api#documentation" => "<p>The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application.</p> <p>To override these settings and define custom settings for a specific campaign, use the CampaignHook object of the <link  linkend=\"apps-application-id-campaigns-campaign-id\">Campaign</link> resource.</p>"}))
    WriteApplicationSettingsRequest.add_member(:cloud_watch_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CloudWatchMetricsEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable application-related alarms in Amazon CloudWatch.</p>"}))
    WriteApplicationSettingsRequest.add_member(:event_tagging_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EventTaggingEnabled'))
    WriteApplicationSettingsRequest.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>The default sending limits for campaigns in the application. To override these limits and define custom limits for a specific campaign or journey, use the <link  linkend=\"apps-application-id-campaigns-campaign-id\">Campaign</link> resource or the <link  linkend=\"apps-application-id-journeys-journey-id\">Journey</link> resource, respectively.</p>"}))
    WriteApplicationSettingsRequest.add_member(:quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime', traits: {"smithy.api#documentation" => "<p>The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings).</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled.</p> <p>To override the default quiet time settings for a specific campaign or journey, use the <link  linkend=\"apps-application-id-campaigns-campaign-id\">Campaign</link> resource or the <link  linkend=\"apps-application-id-journeys-journey-id\">Journey</link> resource to define a custom quiet time for the campaign or journey.</p>"}))
    WriteApplicationSettingsRequest.add_member(:journey_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsJourneyLimits, location_name: 'JourneyLimits', traits: {"smithy.api#documentation" => "<p>The default sending limits for journeys in the application. These limits apply to each journey for the application but can be overridden, on a per journey basis, with the JourneyLimits resource.</p>"}))
    WriteApplicationSettingsRequest.type = Types::WriteApplicationSettingsRequest
    WriteCampaignRequest.add_member(:additional_treatments, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfWriteTreatmentResource, location_name: 'AdditionalTreatments', traits: {"smithy.api#documentation" => "<p>An array of requests that defines additional treatments for the campaign, in addition to the default treatment for the campaign.</p>"}))
    WriteCampaignRequest.add_member(:custom_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>The delivery configuration settings for sending the campaign through a custom channel. This object is required if the MessageConfiguration object for the campaign specifies a CustomMessage object.</p>"}))
    WriteCampaignRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A custom description of the campaign.</p>"}))
    WriteCampaignRequest.add_member(:holdout_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HoldoutPercent', traits: {"smithy.api#documentation" => "<p>The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.</p>"}))
    WriteCampaignRequest.add_member(:hook, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignHook, location_name: 'Hook', traits: {"smithy.api#documentation" => "<p>The settings for the AWS Lambda function to invoke as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.</p>"}))
    WriteCampaignRequest.add_member(:is_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsPaused', traits: {"smithy.api#documentation" => "<p>Specifies whether to pause the campaign. A paused campaign doesn't run unless you resume it by changing this value to false.</p>"}))
    WriteCampaignRequest.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignLimits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>The messaging limits for the campaign.</p>"}))
    WriteCampaignRequest.add_member(:message_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#documentation" => "<p>The message configuration settings for the campaign.</p>"}))
    WriteCampaignRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A custom name for the campaign.</p>"}))
    WriteCampaignRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule settings for the campaign.</p>"}))
    WriteCampaignRequest.add_member(:segment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the segment to associate with the campaign.</p>"}))
    WriteCampaignRequest.add_member(:segment_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentVersion', traits: {"smithy.api#documentation" => "<p>The version of the segment to associate with the campaign.</p>"}))
    WriteCampaignRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<note><p>As of <b>22-05-2023</b> tags has been deprecated for update operations. After this date any value in tags is not processed and an error code is not returned. To manage tags we recommend using either <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/tags-resource-arn.html\">Tags</a> in the <i>API Reference for Amazon Pinpoint</i>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html\">resourcegroupstaggingapi</a> commands in the <i>AWS Command Line Interface Documentation</i> or <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/resourcegroupstaggingapi/package-summary.html\">resourcegroupstaggingapi</a> in the <i>AWS SDK</i>.</p></note> <p>(Deprecated) A string-to-string map of key-value pairs that defines the tags to associate with the campaign. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    WriteCampaignRequest.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration', traits: {"smithy.api#documentation" => "<p>The message template to use for the campaign.</p>"}))
    WriteCampaignRequest.add_member(:treatment_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription', traits: {"smithy.api#documentation" => "<p>A custom description of the default treatment for the campaign.</p>"}))
    WriteCampaignRequest.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName', traits: {"smithy.api#documentation" => "<p>A custom name of the default treatment for the campaign, if the campaign has multiple treatments. A <i>treatment</i> is a variation of a campaign that's used for A/B testing.</p>"}))
    WriteCampaignRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>Defines the priority of the campaign, used to decide the order of messages displayed to user if there are multiple messages scheduled to be displayed at the same moment.</p>"}))
    WriteCampaignRequest.type = Types::WriteCampaignRequest
    WriteEventStream.add_member(:destination_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationStreamArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or Amazon Kinesis Data Firehose delivery stream that you want to publish event data to.</p> <p>For a Kinesis data stream, the ARN format is: arn:aws:kinesis:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:stream/<replaceable>stream_name</replaceable>\n               </p> <p>For a Kinesis Data Firehose delivery stream, the ARN format is: arn:aws:firehose:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:deliverystream/<replaceable>stream_name</replaceable>\n               </p>", "smithy.api#required" => {}}))
    WriteEventStream.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to publish event data to the stream in your AWS account.</p>", "smithy.api#required" => {}}))
    WriteEventStream.type = Types::WriteEventStream
    WriteJourneyRequest.add_member(:activities, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfActivity, location_name: 'Activities', traits: {"smithy.api#documentation" => "<p>A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity. An activity identifier can contain a maximum of 100 characters. The characters must be alphanumeric characters.</p>"}))
    WriteJourneyRequest.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the journey was created.</p>"}))
    WriteJourneyRequest.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date, in ISO 8601 format, when the journey was last modified.</p>"}))
    WriteJourneyRequest.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyLimits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>The messaging and entry limits for the journey.</p>"}))
    WriteJourneyRequest.add_member(:local_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LocalTime', traits: {"smithy.api#documentation" => "<p>Specifies whether the journey's scheduled start and end times use each participant's local time. To base the schedule on each participant's local time, set this value to true.</p>"}))
    WriteJourneyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the journey. A journey name can contain a maximum of 150 characters. The characters can be alphanumeric characters or symbols, such as underscores (_) or hyphens (-). A journey name can't contain any spaces.</p>", "smithy.api#required" => {}}))
    WriteJourneyRequest.add_member(:quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: QuietTime, location_name: 'QuietTime', traits: {"smithy.api#documentation" => "<p>The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.</p></li> <li><p>The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.</p></li> <li><p>The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey.</p></li></ul> <p>If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.</p>"}))
    WriteJourneyRequest.add_member(:refresh_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RefreshFrequency', traits: {"smithy.api#documentation" => "<p>The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.</p>"}))
    WriteJourneyRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneySchedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule settings for the journey.</p>"}))
    WriteJourneyRequest.add_member(:start_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartActivity', traits: {"smithy.api#documentation" => "<p>The unique identifier for the first activity in the journey. The identifier for this activity can contain a maximum of 128 characters. The characters must be alphanumeric characters.</p>"}))
    WriteJourneyRequest.add_member(:start_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: StartCondition, location_name: 'StartCondition', traits: {"smithy.api#documentation" => "<p>The segment that defines which users are participants in the journey.</p>"}))
    WriteJourneyRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the journey. Valid values are:</p> <ul><li><p>DRAFT - Saves the journey and doesn't publish it.</p></li> <li><p>ACTIVE - Saves and publishes the journey. Depending on the journey's schedule, the journey starts running immediately or at the scheduled start time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.</p></li></ul> <p>PAUSED, CANCELLED, COMPLETED, and CLOSED states are not supported in requests to create or update a journey. To cancel, pause, or resume a journey, use the <link  linkend=\"apps-application-id-journeys-journey-id-state\">Journey State</link> resource.</p>"}))
    WriteJourneyRequest.add_member(:wait_for_quiet_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'WaitForQuietTime', traits: {"smithy.api#documentation" => "<p>Specifies whether endpoints in quiet hours should enter a wait till the end of their quiet hours.</p>"}))
    WriteJourneyRequest.add_member(:refresh_on_segment_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RefreshOnSegmentUpdate', traits: {"smithy.api#documentation" => "<p>Indicates whether the journey participants should be refreshed when a segment is updated.</p>"}))
    WriteJourneyRequest.add_member(:journey_channel_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: JourneyChannelSettings, location_name: 'JourneyChannelSettings', traits: {"smithy.api#documentation" => "<p>The channel-specific configurations for the journey.</p>"}))
    WriteJourneyRequest.add_member(:sending_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SendingSchedule', traits: {"smithy.api#documentation" => "<p>Indicates if journey has Advance Quiet Time enabled. This flag should be set to true in order to allow using OpenHours and ClosedDays.</p>"}))
    WriteJourneyRequest.add_member(:open_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenHours, location_name: 'OpenHours', traits: {"smithy.api#documentation" => "<p>The time when journey allow to send messages. QuietTime should be configured first and SendingSchedule should be set to true.</p>"}))
    WriteJourneyRequest.add_member(:closed_days, Smithy::Schema::Shapes::ShapeRef.new(shape: ClosedDays, location_name: 'ClosedDays', traits: {"smithy.api#documentation" => "<p>The time when journey will stop sending messages. QuietTime should be configured first and SendingSchedule should be set to true.</p>"}))
    WriteJourneyRequest.add_member(:timezone_estimation_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTimezoneestimationmethodselement, location_name: 'TimezoneEstimationMethods', traits: {"smithy.api#documentation" => "<p>An array of time zone estimation methods, if any, to use for determining an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints-endpoint-id.html\">Endpoints</a> time zone if the Endpoint does not have a value for the Demographic.Timezone attribute.</p> <ul> <li><p>PHONE_NUMBER - A time zone is determined based on the Endpoint.Address and Endpoint.Location.Country.</p></li> <li><p>POSTAL_CODE - A time zone is determined based on the Endpoint.Location.PostalCode and Endpoint.Location.Country.</p> <note><p>POSTAL_CODE detection is only supported in the United States, United Kingdom, Australia, New Zealand, Canada, France, Italy, Spain, Germany and in regions where Amazon Pinpoint is available.</p></note></li> </ul>"}))
    WriteJourneyRequest.type = Types::WriteJourneyRequest
    WriteSegmentRequest.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>The criteria that define the dimensions for the segment.</p>"}))
    WriteSegmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the segment.</p>"}))
    WriteSegmentRequest.add_member(:segment_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentGroupList, location_name: 'SegmentGroups', traits: {"smithy.api#documentation" => "<p>The segment group to use and the dimensions to apply to the group's base segments in order to build the segment. A segment group can consist of zero or more base segments. Your request can include only one segment group.</p>"}))
    WriteSegmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'tags', traits: {"smithy.api#documentation" => "<note><p>As of <b>22-05-2023</b> tags has been deprecated for update operations. After this date any value in tags is not processed and an error code is not returned. To manage tags we recommend using either <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/tags-resource-arn.html\">Tags</a> in the <i>API Reference for Amazon Pinpoint</i>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html\">resourcegroupstaggingapi</a> commands in the <i>AWS Command Line Interface Documentation</i> or <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/resourcegroupstaggingapi/package-summary.html\">resourcegroupstaggingapi</a> in the <i>AWS SDK</i>.</p></note> <p>(Deprecated) A string-to-string map of key-value pairs that defines the tags to associate with the segment. Each tag consists of a required tag key and an associated tag value.</p>", "smithy.api#jsonName" => "tags"}))
    WriteSegmentRequest.type = Types::WriteSegmentRequest
    WriteTreatmentResource.add_member(:custom_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDeliveryConfiguration, location_name: 'CustomDeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.</p>"}))
    WriteTreatmentResource.add_member(:message_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'MessageConfiguration', traits: {"smithy.api#documentation" => "<p>The message configuration settings for the treatment.</p>"}))
    WriteTreatmentResource.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule settings for the treatment.</p>"}))
    WriteTreatmentResource.add_member(:size_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SizePercent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The allocated percentage of users (segment members) to send the treatment to.</p>", "smithy.api#required" => {}}))
    WriteTreatmentResource.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: 'TemplateConfiguration', traits: {"smithy.api#documentation" => "<p>The message template to use for the treatment.</p>"}))
    WriteTreatmentResource.add_member(:treatment_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentDescription', traits: {"smithy.api#documentation" => "<p>A custom description of the treatment.</p>"}))
    WriteTreatmentResource.add_member(:treatment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TreatmentName', traits: {"smithy.api#documentation" => "<p>A custom name for the treatment.</p>"}))
    WriteTreatmentResource.type = Types::WriteTreatmentResource
    Endpointtypeselement.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUSH', traits: {"smithy.api#enumValue" => "PUSH"}))
    Endpointtypeselement.add_member(:gcm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GCM', traits: {"smithy.api#enumValue" => "GCM"}))
    Endpointtypeselement.add_member(:apns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS', traits: {"smithy.api#enumValue" => "APNS"}))
    Endpointtypeselement.add_member(:apns_sandbox, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    Endpointtypeselement.add_member(:apns_voip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP', traits: {"smithy.api#enumValue" => "APNS_VOIP"}))
    Endpointtypeselement.add_member(:apns_voip_sandbox, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_VOIP_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_VOIP_SANDBOX"}))
    Endpointtypeselement.add_member(:adm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADM', traits: {"smithy.api#enumValue" => "ADM"}))
    Endpointtypeselement.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    Endpointtypeselement.add_member(:voice, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE', traits: {"smithy.api#enumValue" => "VOICE"}))
    Endpointtypeselement.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    Endpointtypeselement.add_member(:baidu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAIDU', traits: {"smithy.api#enumValue" => "BAIDU"}))
    Endpointtypeselement.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    Endpointtypeselement.add_member(:in_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_APP', traits: {"smithy.api#enumValue" => "IN_APP"}))
    Timezoneestimationmethodselement.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    Timezoneestimationmethodselement.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTAL_CODE', traits: {"smithy.api#enumValue" => "POSTAL_CODE"}))

    Pinpoint = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpoint#Pinpoint"
      service.name = "Pinpoint"
      service.version = "2016-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint", "arnNamespace" => "mobiletargeting", "cloudFormationName" => "Pinpoint", "cloudTrailEventSource" => "pinpoint.amazonaws.com", "endpointPrefix" => "pinpoint"}, "aws.auth#sigv4" => {"name" => "mobiletargeting"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Amazon Pinpoint"}
      service.add_operation(:create_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateApp"
        operation.name = "CreateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps", "code" => 201}}
      end)
      service.add_operation(:create_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateCampaign"
        operation.name = "CreateCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/campaigns", "code" => 201}}
      end)
      service.add_operation(:create_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateEmailTemplate"
        operation.name = "CreateEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/email", "code" => 201}}
      end)
      service.add_operation(:create_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateExportJob"
        operation.name = "CreateExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/jobs/export", "code" => 202}}
      end)
      service.add_operation(:create_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateImportJob"
        operation.name = "CreateImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/jobs/import", "code" => 201}}
      end)
      service.add_operation(:create_in_app_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateInAppTemplate"
        operation.name = "CreateInAppTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInAppTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInAppTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 201}}
      end)
      service.add_operation(:create_journey, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateJourney"
        operation.name = "CreateJourney"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJourneyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJourneyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/journeys", "code" => 201}}
      end)
      service.add_operation(:create_push_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreatePushTemplate"
        operation.name = "CreatePushTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePushTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePushTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/push", "code" => 201}}
      end)
      service.add_operation(:create_recommender_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateRecommenderConfiguration"
        operation.name = "CreateRecommenderConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/recommenders", "code" => 201}}
      end)
      service.add_operation(:create_segment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateSegment"
        operation.name = "CreateSegment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSegmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/segments", "code" => 201}}
      end)
      service.add_operation(:create_sms_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateSmsTemplate"
        operation.name = "CreateSmsTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSmsTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSmsTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 201}}
      end)
      service.add_operation(:create_voice_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#CreateVoiceTemplate"
        operation.name = "CreateVoiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 201}}
      end)
      service.add_operation(:delete_adm_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteAdmChannel"
        operation.name = "DeleteAdmChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdmChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdmChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/adm", "code" => 200}}
      end)
      service.add_operation(:delete_apns_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsChannel"
        operation.name = "DeleteApnsChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns", "code" => 200}}
      end)
      service.add_operation(:delete_apns_sandbox_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsSandboxChannel"
        operation.name = "DeleteApnsSandboxChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsSandboxChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsSandboxChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns_sandbox", "code" => 200}}
      end)
      service.add_operation(:delete_apns_voip_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsVoipChannel"
        operation.name = "DeleteApnsVoipChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip", "code" => 200}}
      end)
      service.add_operation(:delete_apns_voip_sandbox_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApnsVoipSandboxChannel"
        operation.name = "DeleteApnsVoipSandboxChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipSandboxChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApnsVoipSandboxChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox", "code" => 200}}
      end)
      service.add_operation(:delete_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}", "code" => 200}}
      end)
      service.add_operation(:delete_baidu_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteBaiduChannel"
        operation.name = "DeleteBaiduChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBaiduChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBaiduChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/baidu", "code" => 200}}
      end)
      service.add_operation(:delete_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteCampaign"
        operation.name = "DeleteCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:delete_email_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEmailChannel"
        operation.name = "DeleteEmailChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/email", "code" => 200}}
      end)
      service.add_operation(:delete_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEmailTemplate"
        operation.name = "DeleteEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/email", "code" => 202}}
      end)
      service.add_operation(:delete_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}", "code" => 202}}
      end)
      service.add_operation(:delete_event_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteEventStream"
        operation.name = "DeleteEventStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventStreamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/eventstream", "code" => 200}}
      end)
      service.add_operation(:delete_gcm_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteGcmChannel"
        operation.name = "DeleteGcmChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGcmChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGcmChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/gcm", "code" => 200}}
      end)
      service.add_operation(:delete_in_app_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteInAppTemplate"
        operation.name = "DeleteInAppTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInAppTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInAppTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 202}}
      end)
      service.add_operation(:delete_journey, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteJourney"
        operation.name = "DeleteJourney"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJourneyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJourneyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}", "code" => 200}}
      end)
      service.add_operation(:delete_push_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeletePushTemplate"
        operation.name = "DeletePushTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePushTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePushTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/push", "code" => 202}}
      end)
      service.add_operation(:delete_recommender_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteRecommenderConfiguration"
        operation.name = "DeleteRecommenderConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecommenderConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecommenderConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/recommenders/{RecommenderId}", "code" => 200}}
      end)
      service.add_operation(:delete_segment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteSegment"
        operation.name = "DeleteSegment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSegmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}", "code" => 200}}
      end)
      service.add_operation(:delete_sms_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteSmsChannel"
        operation.name = "DeleteSmsChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/sms", "code" => 200}}
      end)
      service.add_operation(:delete_sms_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteSmsTemplate"
        operation.name = "DeleteSmsTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSmsTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 202}}
      end)
      service.add_operation(:delete_user_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteUserEndpoints"
        operation.name = "DeleteUserEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/users/{UserId}", "code" => 202}}
      end)
      service.add_operation(:delete_voice_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteVoiceChannel"
        operation.name = "DeleteVoiceChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/apps/{ApplicationId}/channels/voice", "code" => 200}}
      end)
      service.add_operation(:delete_voice_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#DeleteVoiceTemplate"
        operation.name = "DeleteVoiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 202}}
      end)
      service.add_operation(:get_adm_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetAdmChannel"
        operation.name = "GetAdmChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdmChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdmChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/adm", "code" => 200}}
      end)
      service.add_operation(:get_apns_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsChannel"
        operation.name = "GetApnsChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns", "code" => 200}}
      end)
      service.add_operation(:get_apns_sandbox_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsSandboxChannel"
        operation.name = "GetApnsSandboxChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsSandboxChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsSandboxChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns_sandbox", "code" => 200}}
      end)
      service.add_operation(:get_apns_voip_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsVoipChannel"
        operation.name = "GetApnsVoipChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip", "code" => 200}}
      end)
      service.add_operation(:get_apns_voip_sandbox_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApnsVoipSandboxChannel"
        operation.name = "GetApnsVoipSandboxChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipSandboxChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApnsVoipSandboxChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox", "code" => 200}}
      end)
      service.add_operation(:get_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApp"
        operation.name = "GetApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetAppFailure", "params" => {"ApplicationId" => "InvalidApplicationId"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_application_date_range_kpi, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApplicationDateRangeKpi"
        operation.name = "GetApplicationDateRangeKpi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationDateRangeKpiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationDateRangeKpiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/kpis/daterange/{KpiName}", "code" => 200}}
      end)
      service.add_operation(:get_application_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApplicationSettings"
        operation.name = "GetApplicationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/settings", "code" => 200}}
      end)
      service.add_operation(:get_apps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetApps"
        operation.name = "GetApps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetAppsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_baidu_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetBaiduChannel"
        operation.name = "GetBaiduChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaiduChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaiduChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/baidu", "code" => 200}}
      end)
      service.add_operation(:get_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaign"
        operation.name = "GetCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:get_campaign_activities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignActivities"
        operation.name = "GetCampaignActivities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignActivitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignActivitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/activities", "code" => 200}}
      end)
      service.add_operation(:get_campaign_date_range_kpi, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignDateRangeKpi"
        operation.name = "GetCampaignDateRangeKpi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignDateRangeKpiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignDateRangeKpiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/kpis/daterange/{KpiName}", "code" => 200}}
      end)
      service.add_operation(:get_campaign_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignVersion"
        operation.name = "GetCampaignVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions/{Version}", "code" => 200}}
      end)
      service.add_operation(:get_campaign_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaignVersions"
        operation.name = "GetCampaignVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions", "code" => 200}}
      end)
      service.add_operation(:get_campaigns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetCampaigns"
        operation.name = "GetCampaigns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/campaigns", "code" => 200}}
      end)
      service.add_operation(:get_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetChannels"
        operation.name = "GetChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels", "code" => 200}}
      end)
      service.add_operation(:get_email_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEmailChannel"
        operation.name = "GetEmailChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/email", "code" => 200}}
      end)
      service.add_operation(:get_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEmailTemplate"
        operation.name = "GetEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/email", "code" => 200}}
      end)
      service.add_operation(:get_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEndpoint"
        operation.name = "GetEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}", "code" => 200}}
      end)
      service.add_operation(:get_event_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetEventStream"
        operation.name = "GetEventStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventStreamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/eventstream", "code" => 200}}
      end)
      service.add_operation(:get_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetExportJob"
        operation.name = "GetExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/export/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_export_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetExportJobs"
        operation.name = "GetExportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/export", "code" => 200}}
      end)
      service.add_operation(:get_gcm_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetGcmChannel"
        operation.name = "GetGcmChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGcmChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGcmChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/gcm", "code" => 200}}
      end)
      service.add_operation(:get_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/import/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetImportJobs"
        operation.name = "GetImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/jobs/import", "code" => 200}}
      end)
      service.add_operation(:get_in_app_messages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetInAppMessages"
        operation.name = "GetInAppMessages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppMessagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppMessagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}/inappmessages", "code" => 200}}
      end)
      service.add_operation(:get_in_app_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetInAppTemplate"
        operation.name = "GetInAppTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInAppTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 200}}
      end)
      service.add_operation(:get_journey, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourney"
        operation.name = "GetJourney"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}", "code" => 200}}
      end)
      service.add_operation(:get_journey_date_range_kpi, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyDateRangeKpi"
        operation.name = "GetJourneyDateRangeKpi"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyDateRangeKpiRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyDateRangeKpiResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/kpis/daterange/{KpiName}", "code" => 200}}
      end)
      service.add_operation(:get_journey_execution_activity_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyExecutionActivityMetrics"
        operation.name = "GetJourneyExecutionActivityMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionActivityMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionActivityMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/activities/{JourneyActivityId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_execution_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyExecutionMetrics"
        operation.name = "GetJourneyExecutionMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyExecutionMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_run_execution_activity_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyRunExecutionActivityMetrics"
        operation.name = "GetJourneyRunExecutionActivityMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionActivityMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionActivityMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/activities/{JourneyActivityId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_run_execution_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyRunExecutionMetrics"
        operation.name = "GetJourneyRunExecutionMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunExecutionMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/execution-metrics", "code" => 200}}
      end)
      service.add_operation(:get_journey_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetJourneyRuns"
        operation.name = "GetJourneyRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJourneyRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs", "code" => 200}}
      end)
      service.add_operation(:get_push_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetPushTemplate"
        operation.name = "GetPushTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPushTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPushTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/push", "code" => 200}}
      end)
      service.add_operation(:get_recommender_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetRecommenderConfiguration"
        operation.name = "GetRecommenderConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/recommenders/{RecommenderId}", "code" => 200}}
      end)
      service.add_operation(:get_recommender_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetRecommenderConfigurations"
        operation.name = "GetRecommenderConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommenderConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/recommenders", "code" => 200}}
      end)
      service.add_operation(:get_segment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegment"
        operation.name = "GetSegment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}", "code" => 200}}
      end)
      service.add_operation(:get_segment_export_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentExportJobs"
        operation.name = "GetSegmentExportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentExportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentExportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/export", "code" => 200}}
      end)
      service.add_operation(:get_segment_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentImportJobs"
        operation.name = "GetSegmentImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/import", "code" => 200}}
      end)
      service.add_operation(:get_segment_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentVersion"
        operation.name = "GetSegmentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions/{Version}", "code" => 200}}
      end)
      service.add_operation(:get_segment_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegmentVersions"
        operation.name = "GetSegmentVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions", "code" => 200}}
      end)
      service.add_operation(:get_segments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSegments"
        operation.name = "GetSegments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSegmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/segments", "code" => 200}}
      end)
      service.add_operation(:get_sms_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSmsChannel"
        operation.name = "GetSmsChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/sms", "code" => 200}}
      end)
      service.add_operation(:get_sms_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetSmsTemplate"
        operation.name = "GetSmsTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSmsTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 200}}
      end)
      service.add_operation(:get_user_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetUserEndpoints"
        operation.name = "GetUserEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/users/{UserId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetVoiceChannel"
        operation.name = "GetVoiceChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/channels/voice", "code" => 200}}
      end)
      service.add_operation(:get_voice_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#GetVoiceTemplate"
        operation.name = "GetVoiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 200}}
      end)
      service.add_operation(:list_journeys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListJourneys"
        operation.name = "ListJourneys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJourneysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJourneysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/apps/{ApplicationId}/journeys", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_template_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListTemplateVersions"
        operation.name = "ListTemplateVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates/{TemplateName}/{TemplateType}/versions", "code" => 200}}
      end)
      service.add_operation(:list_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/templates", "code" => 200}}
      end)
      service.add_operation(:phone_number_validate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#PhoneNumberValidate"
        operation.name = "PhoneNumberValidate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberValidateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberValidateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/phone/number/validate", "code" => 200}}
      end)
      service.add_operation(:put_event_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#PutEventStream"
        operation.name = "PutEventStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventStreamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/eventstream", "code" => 200}}
      end)
      service.add_operation(:put_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#PutEvents"
        operation.name = "PutEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/events", "code" => 202}}
      end)
      service.add_operation(:remove_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#RemoveAttributes"
        operation.name = "RemoveAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/attributes/{AttributeType}", "code" => 200}}
      end)
      service.add_operation(:send_messages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#SendMessages"
        operation.name = "SendMessages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/messages", "code" => 200}}
      end)
      service.add_operation(:send_otp_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#SendOTPMessage"
        operation.name = "SendOTPMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendOTPMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendOTPMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/otp", "code" => 200}}
      end)
      service.add_operation(:send_users_messages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#SendUsersMessages"
        operation.name = "SendUsersMessages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendUsersMessagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/users-messages", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_adm_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateAdmChannel"
        operation.name = "UpdateAdmChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAdmChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAdmChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/adm", "code" => 200}}
      end)
      service.add_operation(:update_apns_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsChannel"
        operation.name = "UpdateApnsChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns", "code" => 200}}
      end)
      service.add_operation(:update_apns_sandbox_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsSandboxChannel"
        operation.name = "UpdateApnsSandboxChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsSandboxChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsSandboxChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns_sandbox", "code" => 200}}
      end)
      service.add_operation(:update_apns_voip_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsVoipChannel"
        operation.name = "UpdateApnsVoipChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip", "code" => 200}}
      end)
      service.add_operation(:update_apns_voip_sandbox_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApnsVoipSandboxChannel"
        operation.name = "UpdateApnsVoipSandboxChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipSandboxChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApnsVoipSandboxChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox", "code" => 200}}
      end)
      service.add_operation(:update_application_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateApplicationSettings"
        operation.name = "UpdateApplicationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/settings", "code" => 200}}
      end)
      service.add_operation(:update_baidu_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateBaiduChannel"
        operation.name = "UpdateBaiduChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBaiduChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBaiduChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/baidu", "code" => 200}}
      end)
      service.add_operation(:update_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateCampaign"
        operation.name = "UpdateCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:update_email_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEmailChannel"
        operation.name = "UpdateEmailChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/email", "code" => 200}}
      end)
      service.add_operation(:update_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEmailTemplate"
        operation.name = "UpdateEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/email", "code" => 202}}
      end)
      service.add_operation(:update_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEndpoint"
        operation.name = "UpdateEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/endpoints/{EndpointId}", "code" => 202}}
      end)
      service.add_operation(:update_endpoints_batch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateEndpointsBatch"
        operation.name = "UpdateEndpointsBatch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointsBatchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointsBatchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/endpoints", "code" => 202}}
      end)
      service.add_operation(:update_gcm_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateGcmChannel"
        operation.name = "UpdateGcmChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGcmChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGcmChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/gcm", "code" => 200}}
      end)
      service.add_operation(:update_in_app_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateInAppTemplate"
        operation.name = "UpdateInAppTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInAppTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInAppTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/inapp", "code" => 202}}
      end)
      service.add_operation(:update_journey, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateJourney"
        operation.name = "UpdateJourney"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}", "code" => 200}}
      end)
      service.add_operation(:update_journey_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateJourneyState"
        operation.name = "UpdateJourneyState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJourneyStateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/journeys/{JourneyId}/state", "code" => 200}}
      end)
      service.add_operation(:update_push_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdatePushTemplate"
        operation.name = "UpdatePushTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePushTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePushTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/push", "code" => 202}}
      end)
      service.add_operation(:update_recommender_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateRecommenderConfiguration"
        operation.name = "UpdateRecommenderConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/recommenders/{RecommenderId}", "code" => 200}}
      end)
      service.add_operation(:update_segment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateSegment"
        operation.name = "UpdateSegment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSegmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSegmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/segments/{SegmentId}", "code" => 200}}
      end)
      service.add_operation(:update_sms_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateSmsChannel"
        operation.name = "UpdateSmsChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/sms", "code" => 200}}
      end)
      service.add_operation(:update_sms_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateSmsTemplate"
        operation.name = "UpdateSmsTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmsTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/sms", "code" => 202}}
      end)
      service.add_operation(:update_template_active_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateTemplateActiveVersion"
        operation.name = "UpdateTemplateActiveVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateActiveVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateActiveVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/{TemplateType}/active-version", "code" => 200}}
      end)
      service.add_operation(:update_voice_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateVoiceChannel"
        operation.name = "UpdateVoiceChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/apps/{ApplicationId}/channels/voice", "code" => 200}}
      end)
      service.add_operation(:update_voice_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#UpdateVoiceTemplate"
        operation.name = "UpdateVoiceTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/templates/{TemplateName}/voice", "code" => 202}}
      end)
      service.add_operation(:verify_otp_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpoint#VerifyOTPMessage"
        operation.name = "VerifyOTPMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyOTPMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyOTPMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/apps/{ApplicationId}/verify-otp", "code" => 200}}
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
