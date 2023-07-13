Unreleased Changes
------------------

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
