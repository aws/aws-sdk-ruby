Unreleased Changes
------------------

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