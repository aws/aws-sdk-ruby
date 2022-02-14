Unreleased Changes
------------------

1.21.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2022-01-06)
------------------

* Feature - Downlink Queue Management feature provides APIs for customers to manage the queued messages destined to device inside AWS IoT Core for LoRaWAN. Customer can view, delete or purge the queued message(s). It allows customer to preempt the queued messages and let more urgent messages go through.

1.19.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2021-11-23)
------------------

* Feature - Two new APIs, GetNetworkAnalyzerConfiguration and UpdateNetworkAnalyzerConfiguration, are added for the newly released Network Analyzer feature which enables customers to view real-time frame information and logs from LoRaWAN devices and gateways.

1.16.0 (2021-11-04)
------------------

* Feature - Adding APIs for the FUOTA (firmware update over the air) and multicast for LoRaWAN devices and APIs to support event notification opt-in feature for Sidewalk related events. A few existing APIs need to be modified for this new feature.

1.15.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2021-07-27)
------------------

* Feature - Add SidewalkManufacturingSn as an identifier to allow Customer to query WirelessDevice, in the response, AmazonId is added in the case that Sidewalk device is return.

1.10.0 (2021-06-01)
------------------

* Feature - Added six new public customer logging APIs to allow customers to set/get/reset log levels at resource type and resource id level. The log level set from the APIs will be used to filter log messages that can be emitted to CloudWatch in customer accounts.

1.9.0 (2021-05-10)
------------------

* Feature - Add three new optional fields to support filtering and configurable sub-band in WirelessGateway APIs. The filtering is for all the RF region supported. The sub-band configuration is only applicable to LoRa gateways of US915 or AU915 RF region.

1.8.0 (2021-04-26)
------------------

* Feature - Add a new optional field MessageType to support Sidewalk devices in SendDataToWirelessDevice API

1.7.0 (2021-03-31)
------------------

* Feature - Add Sidewalk support to APIs: GetWirelessDevice, ListWirelessDevices, GetWirelessDeviceStatistics. Add Gateway connection status in GetWirelessGatewayStatistics API.

1.6.0 (2021-03-26)
------------------

* Feature - Support tag-on-create for WirelessDevice.

1.5.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2021-03-09)
------------------

* Feature - Add max value to Seq in SendDataToWirelessDevice API"

1.3.0 (2021-03-02)
------------------

* Feature - Add ARN & Tags for PartnerAccount related APIs and WirelessGatewayTaskDefinition related APIs

1.2.0 (2021-02-02)
------------------

* Feature - Add enum value MqttTopic for Destination ExpressionType, add LoRaWANNetworkServerCertificateId for GetWirelessGatewayCertificate API

1.1.0 (2020-12-22)
------------------

* Feature - Adding the ability to use Fingerprint in GetPartnerAccount and ListPartnerAccounts API responses to protect sensitive customer account information.

1.0.0 (2020-12-15)
------------------

* Feature - Initial release of `aws-sdk-iotwireless`.

