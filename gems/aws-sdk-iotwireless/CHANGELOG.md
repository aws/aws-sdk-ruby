Unreleased Changes
------------------

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

