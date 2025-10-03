# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoT', Module.new) unless Aws.const_defined?('IoT')

# @title AWS IoT
# <fullname>IoT</fullname>
#          <p>IoT provides secure, bi-directional communication between Internet-connected
#             devices (such as sensors, actuators, embedded devices, or smart appliances) and the Amazon Web Services
#             cloud. You can discover your custom IoT-Data endpoint to communicate with, configure
#             rules for data processing and integration with other services, organize resources
#             associated with each device (Registry), configure logging, and create and manage
#             policies and credentials to authenticate devices.</p>
#          <p>The service endpoints that expose this API are listed in
#             <a href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html">Amazon Web Services IoT Core Endpoints and Quotas</a>.
#             You must use the endpoint for the region that has the resources you want to access.</p>
#          <p>The service name used by <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Amazon Web Services
#                 Signature Version 4</a> to sign the request is:
#             <i>execute-api</i>.</p>
#          <p>For more information about how IoT works, see the <a href="https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html">Developer
#             Guide</a>.</p>
#          <p>For information about how to use the credentials provider for IoT, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html">Authorizing Direct Calls to Amazon Web Services Services</a>.</p>
module Aws::IoT
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iot/types'
require_relative 'aws-sdk-iot/paginators'
require_relative 'aws-sdk-iot/schema'
require_relative 'aws-sdk-iot/auth_parameters'
require_relative 'aws-sdk-iot/auth_resolver'
require_relative 'aws-sdk-iot/client'
require_relative 'aws-sdk-iot/customizations'
require_relative 'aws-sdk-iot/errors'
require_relative 'aws-sdk-iot/endpoint_parameters'
require_relative 'aws-sdk-iot/endpoint_provider'
require_relative 'aws-sdk-iot/waiters'
