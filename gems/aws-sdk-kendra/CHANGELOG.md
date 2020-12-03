Unreleased Changes
------------------

1.18.0 (2020-11-05)
------------------

* Feature - Amazon Kendra now supports providing user context in your query requests, Tokens can be JSON or JWT format. This release also introduces support for Confluence cloud datasources.

1.17.0 (2020-10-26)
------------------

* Feature - Amazon Kendra now supports indexing data from Confluence Server.

1.16.0 (2020-10-21)
------------------

* Feature - This release adds custom data sources: a new data source type that gives you full control of the documents added, modified or deleted during a data source sync while providing run history metrics.

1.15.0 (2020-10-21)
------------------

* Feature - This release adds custom data sources: a new data source type that gives you full control of the documents added, modified or deleted during a data source sync while providing run history metrics.

1.14.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2020-09-17)
------------------

* Feature - Amazon Kendra now supports additional file formats and metadata for FAQs.

1.12.0 (2020-09-15)
------------------

* Feature - Amazon Kendra now returns confidence scores for 'document' query responses.

1.11.0 (2020-09-03)
------------------

* Feature - Amazon Kendra now returns confidence scores for both 'answer' and 'question and answer' query responses.

1.10.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2020-07-24)
------------------

* Feature - Amazon Kendra now supports sorting query results based on document attributes. Amazon Kendra also introduced an option to enclose table and column names with double quotes for database data sources.

1.8.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.7.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2020-05-11)
------------------

* Feature - Amazon Kendra is now generally available. As part of general availability, we are launching * Developer edition * Ability to scale your Amazon Kendra index with capacity units * Support for new connectors * Support for new tagging API's * Support for Deleting data source * Metrics for data source sync operations * Metrics for query & storage utilization

1.4.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2020-03-27)
------------------

* Feature - The Amazon Kendra Microsoft SharePoint data source now supports include and exclude regular expressions and change log features. Include and exclude regular expressions enable you to  provide a list of regular expressions to match the display URL of SharePoint documents to either include or exclude documents respectively. When you enable the changelog feature it enables Amazon Kendra to use the SharePoint change log to determine which documents to update in the index.

1.2.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2019-12-10)
------------------

* Feature - 1. Adding DocumentTitleFieldName as an optional configuration for SharePoint. 2. updating s3 object pattern to  support all s3 keys.

1.0.0 (2019-12-03)
------------------

* Feature - Initial release of `aws-sdk-kendra`.