# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTWireless', Module.new) unless Aws.const_defined?('IoTWireless')

# @title AWS IoT Wireless
# <p>AWS IoT Wireless provides bi-directional communication between internet-connected
#             wireless devices and the AWS Cloud. To onboard both <a href="https://docs.aws.amazon.com/iot-wireless/latest/developerguide/iot-lorawan.html">LoRaWAN</a> and <a href="https://docs.aws.amazon.com/iot-wireless/latest/developerguide/iot-sidewalk.html">Sidewalk</a> devices to AWS IoT, use the IoT Wireless API. These wireless
#             devices use the Low Power Wide Area Networking (LPWAN) communication protocol to
#             communicate with AWS IoT. </p>
#          <p>Using the API, you can perform create, read, update, and delete operations for your
#             wireless devices, gateways, destinations, and profiles. After onboarding your devices,
#             you can use the API operations to set log levels and monitor your devices with
#             CloudWatch.</p>
#          <p>You can also use the API operations to create multicast groups and schedule a
#             multicast session for sending a downlink message to devices in the group. By using
#             Firmware Updates Over-The-Air (FUOTA) API operations, you can create a FUOTA task and
#             schedule a session to update the firmware of individual devices or an entire group of
#             devices in a multicast group.</p>
#          <p>To connect to the AWS IoT Wireless Service, use the Service endpoints as described in
#             <a href="https://docs.aws.amazon.com/general/latest/gr/iot-lorawan.html#iot-wireless_region">IoT 
#             Wireless Service endpoints</a>. You can use both IPv4 and IPv6 protocols to connect
#             to the endpoints and send requests to the AWS IoT Wireless service. For more information,
#             see <a href="https://docs.aws.amazon.com/iot-wireless/latest/developerguide/wireless-ipv6-access.html">Using
# 			IPv6 with AWS IoT Wireless</a>.</p>
module Aws::IoTWireless
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotwireless/types'
require_relative 'aws-sdk-iotwireless/paginators'
require_relative 'aws-sdk-iotwireless/schema'
require_relative 'aws-sdk-iotwireless/auth_parameters'
require_relative 'aws-sdk-iotwireless/auth_resolver'
require_relative 'aws-sdk-iotwireless/client'
require_relative 'aws-sdk-iotwireless/customizations'
require_relative 'aws-sdk-iotwireless/errors'
require_relative 'aws-sdk-iotwireless/endpoint_parameters'
require_relative 'aws-sdk-iotwireless/endpoint_provider'
require_relative 'aws-sdk-iotwireless/waiters'
