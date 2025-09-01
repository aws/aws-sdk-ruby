# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTDataPlane', Module.new) unless Aws.const_defined?('IoTDataPlane')

# @title AWS IoT Data Plane
# <fullname>IoT data</fullname>
#          <p>IoT data enables secure, bi-directional communication between Internet-connected things (such as sensors,
#       actuators, embedded devices, or smart appliances) and the Amazon Web Services cloud. It implements a broker for applications and
#       things to publish messages over HTTP (Publish) and retrieve, update, and delete shadows. A shadow is a
#       persistent representation of your things and their state in the Amazon Web Services cloud.</p>
#          <p>Find the endpoint address for actions in IoT data by running this CLI command:</p>
#          <p>
#             <code>aws iot describe-endpoint --endpoint-type iot:Data-ATS</code>
#          </p>
#          <p>The service name used by <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Amazon Web ServicesSignature Version 4</a>
#       to sign requests is: <i>iotdevicegateway</i>.</p>
module Aws::IoTDataPlane
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotdataplane/types'
require_relative 'aws-sdk-iotdataplane/paginators'
require_relative 'aws-sdk-iotdataplane/schema'
require_relative 'aws-sdk-iotdataplane/auth_parameters'
require_relative 'aws-sdk-iotdataplane/auth_resolver'
require_relative 'aws-sdk-iotdataplane/client'
require_relative 'aws-sdk-iotdataplane/customizations'
require_relative 'aws-sdk-iotdataplane/errors'
require_relative 'aws-sdk-iotdataplane/endpoint_parameters'
require_relative 'aws-sdk-iotdataplane/endpoint_provider'
require_relative 'aws-sdk-iotdataplane/waiters'
