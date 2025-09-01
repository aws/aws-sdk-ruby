# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTSiteWise', Module.new) unless Aws.const_defined?('IoTSiteWise')

# @title AWS IoT SiteWise
# <p>Welcome to the IoT SiteWise API Reference. IoT SiteWise is an Amazon Web Services service that connects <a href="https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications">Industrial Internet of Things (IIoT)</a> devices to the power of the Amazon Web Services Cloud. For more information, see the
#       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/">IoT SiteWise User Guide</a>. For information about IoT SiteWise quotas, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
module Aws::IoTSiteWise
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotsitewise/types'
require_relative 'aws-sdk-iotsitewise/paginators'
require_relative 'aws-sdk-iotsitewise/schema'
require_relative 'aws-sdk-iotsitewise/auth_parameters'
require_relative 'aws-sdk-iotsitewise/auth_resolver'
require_relative 'aws-sdk-iotsitewise/client'
require_relative 'aws-sdk-iotsitewise/customizations'
require_relative 'aws-sdk-iotsitewise/errors'
require_relative 'aws-sdk-iotsitewise/endpoint_parameters'
require_relative 'aws-sdk-iotsitewise/endpoint_provider'
require_relative 'aws-sdk-iotsitewise/waiters'
