# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaTailor', Module.new) unless Aws.const_defined?('MediaTailor')

# @title AWS MediaTailor
# <p>Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad insertion and linear channels. With MediaTailor, you can assemble existing content into a linear stream and serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/">AWS Elemental MediaTailor User Guide</a>.</p> <p>Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations and channels the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).</p>
module Aws::MediaTailor
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mediatailor/types'
require_relative 'aws-sdk-mediatailor/paginators'
require_relative 'aws-sdk-mediatailor/schema'
require_relative 'aws-sdk-mediatailor/auth_parameters'
require_relative 'aws-sdk-mediatailor/auth_resolver'
require_relative 'aws-sdk-mediatailor/client'
require_relative 'aws-sdk-mediatailor/errors'
require_relative 'aws-sdk-mediatailor/endpoint_parameters'
require_relative 'aws-sdk-mediatailor/endpoint_provider'
require_relative 'aws-sdk-mediatailor/waiters'
require_relative 'aws-sdk-mediatailor/customizations'
