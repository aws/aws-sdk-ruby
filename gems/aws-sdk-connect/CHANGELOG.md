Unreleased Changes
------------------

1.208.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.207.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.206.0 (2025-06-30)
------------------

* Feature - This release introduces ChatMetrics to the model, providing comprehensive analytics insights for Amazon Connect chat conversations. Users can access these detailed metrics through the AWS Connect API by using the DescribeContact operation with their specific instance and contact IDs

1.205.0 (2025-06-27)
------------------

* Feature - This release adds the following value to an InitiateAs enum: COMPLETED

1.204.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.203.0 (2025-05-29)
------------------

* Feature - Amazon Connect Service Feature: Email Recipient Limit Increase

1.202.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.201.0 (2025-05-01)
------------------

* Feature - This release adds the following fields to DescribeContact: DisconnectReason, AgentInitiatedHoldDuration, AfterContactWorkStartTimestamp, AfterContactWorkEndTimestamp, AfterContactWorkDuration, StateTransitions, Recordings, ContactDetails, ContactEvaluations, Attributes

1.200.0 (2025-04-17)
------------------

* Feature - This release adds following capabilities to Contact Lens Rules APIs 1/ 'ASSIGN_SLA' action and  '$.Case.TemplateId' comparison value for 'OnCaseCreate' and 'OnCaseUpdate' event sources 2/ 'OnSlaBreach' Cases event source which supports '$.RelatedItem.SlaConfiguration.Name' comparison value

1.199.0 (2025-03-10)
------------------

* Feature - Add support for contact transfers in external voice systems.

1.198.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.197.0 (2025-02-14)
------------------

* Feature - Release Notes: 1) Analytics API enhancements: Added new ListAnalyticsDataLakeDataSets API. 2)  Onboarding API Idempotency: Adds ClientToken to instance creation and management APIs to support idempotency.

1.196.0 (2025-02-10)
------------------

* Feature - Updated the CreateContact API documentation to indicate that it only applies to EMAIL contacts.

1.195.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.194.0 (2025-01-21)
------------------

* Feature - Added DeleteContactFlowVersion API and the CAMPAIGN flow type

1.193.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.192.0 (2024-12-20)
------------------

* Feature - This release supports adding NotAttributeCondition and Range to the RoutingCriteria object.

1.191.0 (2024-12-18)
------------------

* Feature - This release adds support for the UpdateParticipantAuthentication API used for customer authentication within Amazon Connect chats.

1.190.0 (2024-12-12)
------------------

* Feature - Configure holidays and other overrides to hours of operation in advance. During contact handling, Amazon Connect automatically checks for overrides and provides customers with an appropriate flow path. After an override period passes call center automatically reverts to standard hours of operation.

1.189.0 (2024-12-10)
------------------

* Feature - Add support for Push Notifications for Amazon Connect chat. With Push Notifications enabled an alert could be sent to customers about new messages even when they aren't actively using the mobile application.

1.188.0 (2024-12-02)
------------------

* Feature - Adds support for WhatsApp Business messaging, IVR call recording, enabling Contact Lens for existing on-premise contact centers and telephony platforms, and enabling telephony and IVR migration to Amazon Connect independent of their contact center agents.

1.187.0 (2024-11-26)
------------------

* Feature - Enables access to ValueMap and ValueInteger types for SegmentAttributes and fixes deserialization bug for DescribeContactFlow in AmazonConnect Public API

1.186.0 (2024-11-22)
------------------

* Feature - Amazon Connect Service Feature: Add APIs for Amazon Connect Email Channel

1.185.0 (2024-11-18)
------------------

* Feature - Adds CreateContactFlowVersion and ListContactFlowVersions APIs to create and view the versions of a contact flow.

1.184.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.183.0 (2024-10-30)
------------------

* Feature - Updated the public documentation for the UserIdentityInfo object to accurately reflect the character limits for the FirstName and LastName fields, which were previously listed as 1-100 characters.

1.182.0 (2024-10-23)
------------------

* Feature - Amazon Connect Service Feature: Add support to start screen sharing for a web calling contact.

1.181.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.180.0 (2024-10-03)
------------------

* Feature - Public GetMetricDataV2 Grouping increase from 3 to 4

1.179.0 (2024-09-30)
------------------

* Feature - Amazon Connect introduces StartOutboundChatContact API allowing customers to initiate outbound chat contacts

1.178.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.177.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.176.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.175.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.174.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.173.0 (2024-09-05)
------------------

* Feature - Amazon Connect Custom Vocabulary now supports Catalan (Spain), Danish (Denmark), Dutch (Netherlands), Finnish (Finland), Indonesian (Indonesia), Malay (Malaysia), Norwegian Bokmal (Norway), Polish (Poland), Swedish (Sweden), and Tagalog/Filipino (Philippines).

1.172.0 (2024-09-03)
------------------

* Feature - Release ReplicaConfiguration as part of DescribeInstance

1.171.0 (2024-08-09)
------------------

* Feature - This release supports adding RoutingCriteria via UpdateContactRoutingData public API.

1.170.0 (2024-08-08)
------------------

* Feature - This release fixes a regression in number of access control tags that are allowed to be added to a security profile in Amazon Connect. You can now add up to four access control tags on a single security profile.

1.169.0 (2024-07-23)
------------------

* Feature - Added PostContactSummary segment type on ListRealTimeContactAnalysisSegmentsV2 API

1.168.0 (2024-07-18)
------------------

* Feature - Amazon Connect expands search API coverage for additional resources.  Search for hierarchy groups by name, ID, tag, or other criteria (new endpoint). Search for agent statuses by name, ID, tag, or other criteria (new endpoint). Search for users by their assigned proficiencies (enhanced endpoint)

1.167.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.166.0 (2024-07-01)
------------------

* Feature - Authentication profiles are Amazon Connect resources (in gated preview) that allow you to configure authentication settings for users in your contact center. This release adds support for new ListAuthenticationProfiles, DescribeAuthenticationProfile and UpdateAuthenticationProfile APIs.

1.165.0 (2024-06-28)
------------------

* Feature - This release supports showing PreferredAgentRouting step via DescribeContact API.

1.164.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.163.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.162.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.161.0 (2024-05-30)
------------------

* Feature - Adding associatedQueueIds as a SearchCriteria and response field to the SearchRoutingProfiles API

1.160.0 (2024-05-29)
------------------

* Feature - This release includes changes to DescribeContact API's response by including ConnectedToSystemTimestamp, RoutingCriteria, Customer, Campaign, AnsweringMachineDetectionStatus, CustomerVoiceActivity, QualityMetrics, DisconnectDetails, and SegmentAttributes information from a contact in Amazon Connect.

1.159.0 (2024-05-16)
------------------

* Feature - Adding Contact Flow metrics to the GetMetricDataV2 API

1.158.0 (2024-05-14)
------------------

* Feature - Amazon Connect provides enhanced search capabilities for flows & flow modules on the Connect admin website and programmatically using APIs. You can search for flows and flow modules by name, description, type, status, and tags, to filter and identify a specific flow in your Connect instances.

1.157.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.156.0 (2024-05-03)
------------------

* Feature - This release adds 5 new APIs for managing attachments: StartAttachedFileUpload, CompleteAttachedFileUpload, GetAttachedFile, BatchGetAttachedFileMetadata, DeleteAttachedFile. These APIs can be used to programmatically upload and download attachments to Connect resources, like cases.

1.155.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.154.0 (2024-04-10)
------------------

* Feature - This release adds new Submit Auto Evaluation Action for Amazon Connect Rules.

1.153.0 (2024-03-20)
------------------

* Feature - This release updates the *InstanceStorageConfig APIs to support a new ResourceType: REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS. Use this resource type to enable streaming for real-time analysis of chat contacts and to associate a Kinesis stream where real-time analysis chat segments will be published.

1.152.0 (2024-03-15)
------------------

* Feature - This release adds Hierarchy based Access Control fields to Security Profile public APIs and adds support for UserAttributeFilter to SearchUsers API.

1.151.0 (2024-03-12)
------------------

* Feature - This release increases MaxResults limit to 500 in request for SearchUsers, SearchQueues and SearchRoutingProfiles APIs of Amazon Connect.

1.150.0 (2024-01-26)
------------------

* Feature - Update list and string length limits for predefined attributes.

1.149.0 (2024-01-18)
------------------

* Feature - GetMetricDataV2 now supports 3 groupings

1.148.0 (2024-01-12)
------------------

* Feature - Supervisor Barge for Chat is now supported through the MonitorContact API.

1.147.0 (2024-01-05)
------------------

* Feature - Minor trait updates for User APIs

1.146.0 (2024-01-03)
------------------

* Feature - Amazon Connect, Contact Lens Evaluation API increase evaluation notes max length to 3072.

1.145.0 (2023-12-21)
------------------

* Feature - Adds APIs to manage User Proficiencies and Predefined Attributes. Enhances StartOutboundVoiceContact API input. Introduces SearchContacts API. Enhances DescribeContact API. Adds an API to update Routing Attributes in QueuePriority and QueueTimeAdjustmentSeconds.

1.144.0 (2023-12-15)
------------------

* Feature - Adds relatedContactId field to StartOutboundVoiceContact API input. Introduces PauseContact API and ResumeContact API for Task contacts. Adds pause duration, number of pauses, timestamps for last paused and resumed events to DescribeContact API response. Adds new Rule type and new Rule action.

1.143.0 (2023-12-14)
------------------

* Feature - This release adds support for more granular billing using tags (key:value pairs)

1.142.0 (2023-12-06)
------------------

* Feature - Releasing Tagging Support for Instance Management APIS

1.141.0 (2023-11-28)
------------------

* Feature - Added support for following capabilities: Amazon Connect's in-app, web, and video calling. Two-way SMS integrations. Contact Lens real-time chat analytics feature. Amazon Connect Analytics Datalake capability. Capability to configure real time chat rules.

1.140.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.139.0 (2023-11-17)
------------------

* Feature - This release adds WISDOM_QUICK_RESPONSES as new IntegrationType of Connect IntegrationAssociation resource and bug fixes.

1.138.0 (2023-11-14)
------------------

* Feature - Introducing SegmentAttributes parameter for StartChatContact API

1.137.0 (2023-11-09)
------------------

* Feature - This release adds the ability to integrate customer lambda functions with Connect attachments for scanning and updates the ListIntegrationAssociations API to support filtering on IntegrationArn.

1.136.0 (2023-11-08)
------------------

* Feature - This release clarifies in our public documentation that InstanceId is a requirement for SearchUsers API requests.

1.135.0 (2023-11-06)
------------------

* Feature - Added new API that allows Amazon Connect Outbound Campaigns to create contacts in Amazon Connect when ingesting your dial requests.

1.134.0 (2023-11-03)
------------------

* Feature - Amazon Connect Chat introduces Create Persistent Contact Association API, allowing customers to choose when to resume previous conversations from previous chats, eliminating the need to repeat themselves and allowing agents to provide personalized service with access to entire conversation history.

1.133.0 (2023-11-02)
------------------

* Feature - GetMetricDataV2 API: Update to include new metrics PERCENT_NON_TALK_TIME, PERCENT_TALK_TIME, PERCENT_TALK_TIME_AGENT, PERCENT_TALK_TIME_CUSTOMER

1.132.0 (2023-11-01)
------------------

* Feature - Adds the BatchGetFlowAssociation API which returns flow associations (flow-resource) corresponding to the list of resourceArns supplied in the request. This release also adds IsDefault, LastModifiedRegion and LastModifiedTime fields to the responses of several Describe and List APIs.

1.131.0 (2023-10-30)
------------------

* Feature - This release adds InstanceId field for phone number APIs.

1.130.0 (2023-10-20)
------------------

* Feature - This release adds support for updating phone number metadata, such as phone number description.

1.129.0 (2023-10-03)
------------------

* Feature - GetMetricDataV2 API: Update to include new metrics CONTACTS_RESOLVED_IN_X , AVG_HOLD_TIME_ALL_CONTACTS , AVG_RESOLUTION_TIME , ABANDONMENT_RATE , AGENT_NON_RESPONSE_WITHOUT_CUSTOMER_ABANDONS with added features: Interval Period, TimeZone, Negate MetricFilters, Extended date time range.

1.128.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.127.0 (2023-09-26)
------------------

* Feature - This release updates a set of Amazon Connect APIs that provides the ability to integrate third party applications in the Amazon Connect agent workspace.

1.126.0 (2023-09-15)
------------------

* Feature - New rule type (OnMetricDataUpdate) has been added

1.125.0 (2023-09-01)
------------------

* Feature - Amazon Connect adds the ability to read, create, update, delete, and list view resources, and adds the ability to read, create, delete, and list view versions.

1.124.0 (2023-08-10)
------------------

* Feature - This release adds APIs to provision agents that are global / available in multiple AWS regions and distribute them across these regions by percentage.

1.123.0 (2023-08-04)
------------------

* Feature - Added a new API UpdateRoutingProfileAgentAvailabilityTimer to update agent availability timer of a routing profile.

1.122.0 (2023-07-28)
------------------

* Feature - This release adds support for new number types.

1.121.0 (2023-07-18)
------------------

* Feature - GetMetricDataV2 API: Update to include Contact Lens Conversational Analytics Metrics

1.120.0 (2023-07-13)
------------------

* Feature - Add support for deleting Queues and Routing Profiles.

1.119.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.118.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.117.0 (2023-07-05)
------------------

* Feature - GetMetricDataV2 API: Channels filters do not count towards overall limitation of 100 filter values.

1.116.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.115.0 (2023-06-26)
------------------

* Feature - This release provides a way to search for existing tags within an instance. Before tagging a resource, ensure consistency by searching for pre-existing key:value pairs.

1.114.0 (2023-06-16)
------------------

* Feature - Updates the *InstanceStorageConfig APIs to support a new ResourceType: SCREEN_RECORDINGS to enable screen recording and specify the storage configurations for publishing the recordings. Also updates DescribeInstance and ListInstances APIs to include InstanceAccessUrl attribute in the API response.

1.113.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2023-06-09)
------------------

* Feature - This release adds search APIs for Prompts, Quick Connects and Hours of Operations, which can be used to search for those resources within a Connect Instance.

1.111.0 (2023-06-06)
------------------

* Feature - GetMetricDataV2 API is now available in AWS GovCloud(US) region.

1.110.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.109.0 (2023-05-26)
------------------

* Feature - Documentation update for a new Initiation Method value in DescribeContact API

1.108.0 (2023-05-24)
------------------

* Feature - Amazon Connect Evaluation Capabilities: validation improvements

1.107.0 (2023-05-18)
------------------

* Feature - You can programmatically create and manage prompts using APIs, for example, to extract prompts stored within Amazon Connect and add them to your Amazon S3 bucket. AWS CloudTrail, AWS CloudFormation and tagging are supported.

1.106.0 (2023-05-11)
------------------

* Feature - This release updates GetMetricDataV2 API, to support metric data up-to last 35 days

1.105.0 (2023-05-04)
------------------

* Feature - Remove unused InvalidParameterException from CreateParticipant API

1.104.0 (2023-05-02)
------------------

* Feature - Amazon Connect Service Rules API update: Added OnContactEvaluationSubmit event source to support user configuring evaluation form rules.

1.103.0 (2023-04-25)
------------------

* Feature - Amazon Connect, Contact Lens Evaluation API release including ability to manage forms and to submit contact evaluations.

1.102.0 (2023-04-21)
------------------

* Feature - This release adds a new API CreateParticipant. For Amazon Connect Chat, you can use this new API to customize chat flow experiences.

1.101.0 (2023-04-10)
------------------

* Feature - This release adds the ability to configure an agent's routing profile to receive contacts from multiple channels at the same time via extending the UpdateRoutingProfileConcurrency, CreateRoutingProfile and DescribeRoutingProfile APIs.

1.100.0 (2023-03-27)
------------------

* Feature - This release introduces support for RelatedContactId in the StartChatContact API. Interactive message and interactive message response have been added to the list of supported message content types for this API as well.

1.99.0 (2023-03-09)
------------------

* Feature - This release adds a new API, GetMetricDataV2, which returns metric data for Amazon Connect.

1.98.0 (2023-02-24)
------------------

* Feature - StartTaskContact API now supports linked task creation with a new optional RelatedContactId parameter

1.97.0 (2023-02-20)
------------------

* Feature - Reasons for failed diff has been approved by SDK Reviewer

1.96.0 (2023-02-10)
------------------

* Feature - This update provides the Wisdom session ARN for contacts enabled for Wisdom in the chat channel.

1.95.0 (2023-02-02)
------------------

* Feature - Enabled FIPS endpoints for GovCloud (US) regions in SDK.

1.94.0 (2023-01-19)
------------------

* Feature - Amazon Connect Chat introduces Persistent Chat, allowing customers to resume previous conversations with context and transcripts carried over from previous chats, eliminating the need to repeat themselves and allowing agents to provide personalized service with access to entire conversation history.

1.93.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.92.0 (2023-01-13)
------------------

* Feature - This release updates the responses of UpdateContactFlowContent, UpdateContactFlowMetadata, UpdateContactFlowName and DeleteContactFlow API with empty responses.

1.91.0 (2023-01-05)
------------------

* Feature - Documentation update for a new Initiation Method value in DescribeContact API

1.90.0 (2022-12-23)
------------------

* Feature - Support for Routing Profile filter, SortCriteria, and grouping by Routing Profiles for GetCurrentMetricData API. Support for RoutingProfiles, UserHierarchyGroups, and Agents as filters, NextStatus and AgentStatusName for GetCurrentUserData. Adds ApproximateTotalCount to both APIs.

1.89.0 (2022-12-22)
------------------

* Feature - Amazon Connect Chat introduces the Idle Participant/Autodisconnect feature, which allows users to set timeouts relating to the activity of chat participants, using the new UpdateParticipantRoleConfig API.

1.88.0 (2022-12-21)
------------------

* Feature - Amazon Connect Chat now allows for JSON (application/json) message types to be sent as part of the initial message in the StartChatContact API.

1.87.0 (2022-12-15)
------------------

* Feature - Added support for "English - New Zealand" and "English - South African" to be used with Amazon Connect Custom Vocabulary APIs.

1.86.0 (2022-12-06)
------------------

* Feature - This release provides APIs that enable you to programmatically manage rules for Contact Lens conversational analytics and third party applications. For more information, see   https://docs.aws.amazon.com/connect/latest/APIReference/rules-api.html

1.85.0 (2022-11-18)
------------------

* Feature - Added AllowedAccessControlTags and TagRestrictedResource for Tag Based Access Control on Amazon Connect Webpage

1.84.0 (2022-11-16)
------------------

* Feature - This release adds a new MonitorContact API for initiating monitoring of ongoing Voice and Chat contacts.

1.83.0 (2022-11-15)
------------------

* Feature - This release updates the APIs: UpdateInstanceAttribute, DescribeInstanceAttribute, and ListInstanceAttributes. You can use it to programmatically enable/disable enhanced contact monitoring using attribute type ENHANCED_CONTACT_MONITORING on the specified Amazon Connect instance.

1.82.0 (2022-11-09)
------------------

* Feature - This release adds new fields SignInUrl, UserArn, and UserId to GetFederationToken response payload.

1.81.0 (2022-10-31)
------------------

* Feature - Amazon connect now support a new API DismissUserContact to dismiss or remove terminated contacts in Agent CCP

1.80.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2022-10-19)
------------------

* Feature - This release adds API support for managing phone numbers that can be used across multiple AWS regions through telephony traffic distribution.

1.78.0 (2022-10-13)
------------------

* Feature - This release adds support for a secondary email and a mobile number for Amazon Connect instance users.

1.77.0 (2022-10-04)
------------------

* Feature - Updated the CreateIntegrationAssociation API to support the CASES_DOMAIN IntegrationType.

1.76.0 (2022-09-02)
------------------

* Feature - This release adds search APIs for Routing Profiles and Queues, which can be used to search for those resources within a Connect Instance.

1.75.0 (2022-08-19)
------------------

* Feature - This release adds SearchSecurityProfiles API which can be used to search for Security Profile resources within a Connect Instance.

1.74.0 (2022-06-17)
------------------

* Feature - This release updates these APIs: UpdateInstanceAttribute, DescribeInstanceAttribute and ListInstanceAttributes. You can use it to programmatically enable/disable High volume outbound communications using attribute type HIGH_VOLUME_OUTBOUND on the specified Amazon Connect instance.

1.73.0 (2022-06-06)
------------------

* Feature - This release adds a new API, GetCurrentUserData, which returns real-time details about users' current activity.

1.72.0 (2022-06-02)
------------------

* Feature - This release adds the following features: 1) New APIs to manage (create, list, update) task template resources, 2) Updates to startTaskContact API to support task templates, and 3) new TransferContact API to programmatically transfer in-progress tasks via a contact flow.

1.71.0 (2022-04-28)
------------------

* Feature - This release introduces an API for changing the current agent status of a user in Connect.

1.70.0 (2022-04-25)
------------------

* Feature - This release adds SearchUsers API which can be used to search for users with a Connect Instance

1.69.0 (2022-04-20)
------------------

* Feature - This release adds APIs to search, claim, release, list, update, and describe phone numbers. You can also use them to associate and disassociate contact flows to phone numbers.

1.68.0 (2022-04-01)
------------------

* Feature - This release updates these APIs: UpdateInstanceAttribute, DescribeInstanceAttribute and ListInstanceAttributes. You can use it to programmatically enable/disable multi-party conferencing using attribute type MULTI_PARTY_CONFERENCING on the specified Amazon Connect instance.

1.67.0 (2022-03-11)
------------------

* Feature - This release adds support for enabling Rich Messaging when starting a new chat session via the StartChatContact API. Rich Messaging enables the following formatting options: bold, italics, hyperlinks, bulleted lists, and numbered lists.

1.66.0 (2022-03-04)
------------------

* Feature - This release updates the *InstanceStorageConfig APIs so they support a new ResourceType: REAL_TIME_CONTACT_ANALYSIS_SEGMENTS. Use this resource type to enable streaming for real-time contact analysis and to associate the Kinesis stream where real-time contact analysis segments will be published.

1.65.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2022-01-27)
------------------

* Feature - This release adds support for configuring a custom chat duration when starting a new chat session via the StartChatContact API. The default value for chat duration is 25 hours, minimum configurable value is 1 hour (60 minutes) and maximum configurable value is 7 days (10,080 minutes).

1.62.0 (2022-01-25)
------------------

* Feature - This release adds support for custom vocabularies to be used with Contact Lens. Custom vocabularies improve transcription accuracy for one or more specific words.

1.61.0 (2022-01-20)
------------------

* Feature - This release adds tagging support for UserHierarchyGroups resource.

1.60.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-11-22)
------------------

* Feature - This release adds support for UpdateContactFlowMetadata, DeleteContactFlow and module APIs. For details, see the Release Notes in the Amazon Connect Administrator Guide.

1.57.0 (2021-11-12)
------------------

* Feature - This release adds APIs for creating and managing scheduled tasks. Additionally, adds APIs to describe and update a contact and list associated references.

1.56.0 (2021-11-04)
------------------

* Feature - This release adds CRUD operation support for Security profile resource in Amazon Connect

1.55.0 (2021-11-02)
------------------

* Feature - Amazon Connect Chat now supports real-time message streaming.

1.54.0 (2021-10-29)
------------------

* Feature - Amazon Connect Chat now supports real-time message streaming.

1.53.0 (2021-10-21)
------------------

* Feature - Released Amazon Connect hours of operation API for general availability (GA). This API also supports AWS CloudFormation. For more information, see Amazon Connect Resource Type Reference in the AWS CloudFormation User Guide.

1.52.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2021-09-27)
------------------

* Feature - This release updates a set of APIs: CreateIntegrationAssociation, ListIntegrationAssociations, CreateUseCase, and StartOutboundVoiceContact. You can use it to create integrations with Amazon Pinpoint for the Amazon Connect Campaigns use case, Amazon Connect Voice ID, and Amazon Connect Wisdom.

1.50.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2021-08-06)
------------------

* Feature - This release adds support for agent status and hours of operation. For details, see the Release Notes in the Amazon Connect Administrator Guide.

1.48.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2021-06-24)
------------------

* Feature - Released Amazon Connect quick connects management API for general availability (GA). For more information, see https://docs.aws.amazon.com/connect/latest/APIReference/Welcome.html

1.45.0 (2021-06-15)
------------------

* Feature - This release adds new sets of APIs: AssociateBot, DisassociateBot, and ListBots. You can use it to programmatically add an Amazon Lex bot or Amazon Lex V2 bot on the specified Amazon Connect instance

1.44.0 (2021-05-07)
------------------

* Feature - Adds tagging support for Connect APIs CreateIntegrationAssociation and CreateUseCase.

1.43.0 (2021-04-28)
------------------

* Feature - Updated max number of tags that can be attached from 200 to 50. MaxContacts is now an optional parameter for the UpdateQueueMaxContact API.

1.42.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-02-23)
------------------

* Feature - Documentation updates for AWS Connect (MediaConcurrency Limit).

1.40.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-01-29)
------------------

* Feature - Added API to manage queues or get hours of operation for a queue programmatically, which can be used to create new/update queues, or take actions when skills are outside of their hours of operation.

1.38.0 (2020-12-22)
------------------

* Feature - This release adds support for quick connects. For details, see the Release Notes in the Amazon Connect Administrator Guide.

1.37.0 (2020-12-01)
------------------

* Feature - This release adds an Amazon Connect API that provides the ability to create tasks, and a set of APIs (in preview) to configure AppIntegrations associations with Amazon Connect instances.

1.36.0 (2020-11-20)
------------------

* Feature - This release adds a set of Amazon Connect APIs to programmatically control instance creation, modification, description and deletion.

1.35.0 (2020-11-17)
------------------

* Feature - This release adds support for user hierarchy group and user hierarchy structure. For details, see the Release Notes in the Amazon Connect Administrator Guide.

1.34.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-09-29)
------------------

* Feature - Update TagResource API documentation to include Contact Flows and Routing Profiles as supported resources.

1.32.0 (2020-09-16)
------------------

* Feature - This release adds support for contact flows and routing profiles. For details, see the Release Notes in the Amazon Connect Administrator Guide.

1.31.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-07-17)
------------------

* Feature - This release adds a set of Amazon Connect APIs to programmatically control call recording with start, stop, pause and resume functions.

1.28.0 (2020-07-02)
------------------

* Feature - Documentation updates for Amazon Connect.

1.27.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.26.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-11-21)
------------------

* Feature - This release adds a new API: StartChatContact. You can use it to programmatically start a chat on the specified Amazon Connect instance. Learn more here: https://docs.aws.amazon.com/connect/latest/APIReference/Welcome.html

1.21.0 (2019-11-14)
------------------

* Feature - This release enhances the existing user management APIs and adds 3 new APIs - TagResource, UntagResource, and ListTagsForResource to support tagging Amazon Connect users, which facilitates more granular access controls for Amazon Connect users within an Amazon Connect instance. You can learn more about the new APIs here: https://docs.aws.amazon.com/connect/latest/APIReference/Welcome.html.

1.20.0 (2019-10-23)
------------------

* Feature - This release adds 4 new APIs ListQueues, ListPhoneNumbers, ListContactFlows, and ListHoursOfOperations, which can be used to programmatically list Queues, PhoneNumbers, ContactFlows, and HoursOfOperations configured for an Amazon Connect instance respectively. You can learn more about the new APIs here: https://docs.aws.amazon.com/connect/latest/APIReference/Welcome.html.

1.19.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2019-05-21)
------------------

* Feature - API update.

1.15.0 (2019-05-15)
------------------

* Feature - API update.

1.14.0 (2019-05-14)
------------------

* Feature - API update.

1.13.0 (2019-03-21)
------------------

* Feature - API update.

1.12.0 (2019-03-18)
------------------

* Feature - API update.

1.11.0 (2019-03-14)
------------------

* Feature - API update.

1.10.0 (2018-12-11)
------------------

* Feature - API update.

1.9.0 (2018-11-20)
------------------

* Feature - API update.

1.8.0 (2018-10-24)
------------------

* Feature - API update.

1.7.0 (2018-10-23)
------------------

* Feature - API update.

1.6.0 (2018-09-24)
------------------

* Feature - API update.

1.5.0 (2018-09-12)
------------------

* Feature - API update.

1.4.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.3.0 (2018-09-05)
------------------

* Feature - API update.

1.2.0 (2018-07-31)
------------------

* Feature - API update.

1.1.0 (2018-06-26)
------------------

* Feature - API update.

1.0.0 (2018-03-30)
------------------

* Feature - Initial release of `aws-sdk-connect`.
