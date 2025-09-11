# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MedicalImaging', Module.new) unless Aws.const_defined?('MedicalImaging')

# @title AWS Health Imaging
# <p>This is the <i>AWS HealthImaging API Reference</i>. For an introduction to the service, see <a href="https://docs.aws.amazon.com/healthimaging/latest/devguide/what-is.html">What is AWS HealthImaging?</a> in the <i>AWS HealthImaging Developer Guide</i>.</p>
module Aws::MedicalImaging
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-medicalimaging/types'
require_relative 'aws-sdk-medicalimaging/paginators'
require_relative 'aws-sdk-medicalimaging/schema'
require_relative 'aws-sdk-medicalimaging/auth_parameters'
require_relative 'aws-sdk-medicalimaging/auth_resolver'
require_relative 'aws-sdk-medicalimaging/client'
require_relative 'aws-sdk-medicalimaging/customizations'
require_relative 'aws-sdk-medicalimaging/errors'
require_relative 'aws-sdk-medicalimaging/endpoint_parameters'
require_relative 'aws-sdk-medicalimaging/endpoint_provider'
require_relative 'aws-sdk-medicalimaging/waiters'
