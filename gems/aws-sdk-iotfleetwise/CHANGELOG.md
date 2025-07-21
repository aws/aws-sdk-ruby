Unreleased Changes
------------------

1.50.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2025-06-12)
------------------

* Feature - Add new status READY_FOR_CHECKIN used for vehicle synchronisation

1.48.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2025-04-17)
------------------

* Feature - We've added stricter parameter validations to AWS IoT FleetWise signal catalog, model manifest, and decoder manifest APIs.

1.44.0 (2025-04-08)
------------------

* Feature - This release adds the option to update the strategy of state templates already associated to a vehicle, without the need to remove and re-add them.

1.43.0 (2025-03-05)
------------------

* Feature - This release adds floating point support for CAN/OBD signals and adds support for signed OBD signals.

1.42.0 (2025-02-26)
------------------

* Feature - This release adds an optional listResponseScope request parameter in certain list API requests to limit the response to metadata only.

1.41.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2024-11-21)
------------------

* Feature - AWS IoT FleetWise now includes campaign parameters to store and forward data, configure MQTT topic as a data destination, and collect diagnostic trouble code data. It includes APIs for network agnostic data collection using custom decoding interfaces, and monitoring the last known state of vehicles.

1.37.0 (2024-10-29)
------------------

* Feature - Updated BatchCreateVehicle and BatchUpdateVehicle APIs: LimitExceededException has been added and the maximum number of vehicles in a batch has been set to 10 explicitly

1.36.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2024-10-10)
------------------

* Feature - Refine campaign related API validations

1.34.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2024-05-24)
------------------

* Feature - AWS IoT FleetWise now supports listing vehicles with attributes filter, ListVehicles API is updated to support additional attributes filter.

1.23.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2024-01-16)
------------------

* Feature - Updated APIs: SignalNodeType query parameter has been added to ListSignalCatalogNodesRequest and ListVehiclesResponse has been extended with attributes field.

1.19.0 (2024-01-11)
------------------

* Feature - The following dataTypes have been removed: CUSTOMER_DECODED_INTERFACE in NetworkInterfaceType; CUSTOMER_DECODED_SIGNAL_INFO_IS_NULL in SignalDecoderFailureReason; CUSTOMER_DECODED_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL in NetworkInterfaceFailureReason; CUSTOMER_DECODED_SIGNAL in SignalDecoderType

1.18.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2023-11-27)
------------------

* Feature - AWS IoT FleetWise introduces new APIs for vision system data, such as data collected from cameras, radars, and lidars. You can now model and decode complex data types.

1.16.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2023-09-28)
------------------

* Feature - AWS IoT FleetWise now supports encryption through a customer managed AWS KMS key. The PutEncryptionConfiguration and GetEncryptionConfiguration APIs were added.

1.14.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2023-05-30)
------------------

* Feature - Campaigns now support selecting Timestream or S3 as the data destination, Signal catalogs now support "Deprecation" keyword released in VSS v2.1 and "Comment" keyword released in VSS v3.0

1.7.0 (2023-01-26)
------------------

* Feature - Add model validation to BatchCreateVehicle and BatchUpdateVehicle operations that invalidate requests with an empty vehicles list.

1.6.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.5.0 (2022-12-30)
------------------

* Feature - Update documentation - correct the epoch constant value of default value for expiryTime field in CreateCampaign request.

1.4.0 (2022-12-16)
------------------

* Feature - Updated error handling for empty resource names in "UpdateSignalCatalog" and "GetModelManifest" operations.

1.3.0 (2022-12-09)
------------------

* Feature - Deprecated assignedValue property for actuators and attributes.  Added a message to invalid nodes and invalid decoder manifest exceptions.

1.2.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2022-10-13)
------------------

* Feature - Documentation update for AWS IoT FleetWise

1.0.0 (2022-09-26)
------------------

* Feature - Initial release of `aws-sdk-iotfleetwise`.

