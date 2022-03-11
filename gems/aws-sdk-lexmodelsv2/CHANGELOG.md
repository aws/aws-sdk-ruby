Unreleased Changes
------------------

1.23.0 (2022-03-10)
------------------

* Feature - This release makes slotTypeId an optional parameter in CreateSlot and UpdateSlot APIs in Amazon Lex V2 for model building. Customers can create and update slots without specifying a slot type id.

1.22.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2022-01-12)
------------------

* Feature - This release adds support for Custom vocabulary in Amazon Lex V2 APIs for model building. Customers can give Amazon Lex V2 more information about how to process audio conversations with a bot by creating a custom vocabulary in a specific language.

1.19.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2021-12-09)
------------------

* Feature - Added support for grammar slot type in Amazon Lex. You can author your own grammar in the XML format per the SRGS specification to collect information in a conversation.

1.17.0 (2021-12-01)
------------------

* Feature - This release introduces a new feature, Automated Chatbot Designer, that helps customers automatically create a bot design from existing conversation transcripts. The feature uses machine learning to discover most common intents and the information needed to fulfill them.

1.16.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2021-11-18)
------------------

* Feature - Added support for Polly Neural TTS (NTTS) voices. Customers can choose between 'standard' and 'neural' for Polly Engine configuration per locale when creating or updating an Amazon Lex bot.

1.14.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Remove a plugin that sets the `Content-Type` header and instead depend on a new version of `aws-sdk-core` that does.

1.12.0 (2021-10-08)
------------------

* Feature - Added configuration support for an Amazon Lex bot to provide fulfillment progress updates to users while their requests are being processed. See documentation for more details: https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html

1.11.0 (2021-09-22)
------------------

* Feature - This release adds support for utterances statistics for bots built using Lex V2 console and APIs. For details, see: https://docs.aws.amazon.com/lexv2/latest/dg/monitoring-utterances.html

1.10.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2021-08-05)
------------------

* Feature - Customers can now toggle the active field on prompts and responses.

1.8.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2021-07-27)
------------------

* Feature - Add waiters that automatically poll for resource status for asynchronous operations, such as building a bot

1.5.0 (2021-06-15)
------------------

* Feature - This release adds support for Multi Valued slots in Amazon Lex V2 APIs for model building

1.4.0 (2021-05-20)
------------------

* Feature - Customers can now use resource-based policies to control access to their Lex V2 bots. This release adds APIs to attach and manage permissions for a bot or a bot alias. For details, see: https://docs.aws.amazon.com/lexv2/latest/dg/security_iam_service-with-iam.html

1.3.0 (2021-05-18)
------------------

* Feature - This release adds support for exporting and importing Lex V2 bots and bot locales. It also adds validations to enforce minimum number of tags on Lex V2 resources. For details, see https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html

1.2.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.1 (2021-01-29)
------------------

* Issue - Add a `Content-Type` header to mitigate a service side issue.

1.0.0 (2021-01-22)
------------------

* Feature - Initial release of `aws-sdk-lexmodelsv2`.
