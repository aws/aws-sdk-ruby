Unreleased Changes
------------------

1.15.0 (2024-08-13)
------------------

* Feature - Amazon Neptune Analytics provides a new option for customers to load data into a graph using the RDF (Resource Description Framework) NTRIPLES format. When loading NTRIPLES files, use the value `convertToIri` for the `blankNodeHandling` parameter.

1.14.0 (2024-07-22)
------------------

* Feature - Amazon Neptune Analytics provides new options for customers to start with smaller graphs at a lower cost. CreateGraph, CreaateGraphImportTask, UpdateGraph and StartImportTask APIs will now allow 32 and 64 for `provisioned-memory`

1.13.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2024-04-12)
------------------

* Feature - Update to API documentation to resolve customer reported issues.

1.6.0 (2024-03-29)
------------------

* Feature - Add the new API Start-Import-Task for Amazon Neptune Analytics.

1.5.0 (2024-03-28)
------------------

* Feature - Update ImportTaskCancelled waiter to evaluate task state correctly and minor documentation changes.

1.4.0 (2024-02-12)
------------------

* Feature - Adding a new option "parameters" for data plane api ExecuteQuery to support running parameterized query via SDK.

1.3.0 (2024-02-01)
------------------

* Feature - Adding new APIs in SDK for Amazon Neptune Analytics. These APIs include operations to execute, cancel, list queries and get the graph summary.

1.2.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2023-12-21)
------------------

* Feature - Adds Waiters for successful creation and deletion of Graph, Graph Snapshot, Import Task and Private Endpoints for Neptune Analytics

1.0.0 (2023-12-14)
------------------

* Feature - Initial release of `aws-sdk-neptunegraph`.

