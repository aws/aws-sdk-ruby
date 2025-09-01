# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Transcribe', Module.new) unless Aws.const_defined?('Transcribe')

# @title Amazon Transcribe Service
# <p>Amazon Transcribe offers three main types of batch transcription: <b>Standard</b>, <b>Medical</b>, and
#                 <b>Call Analytics</b>.</p>
#          <ul>
#             <li>
#                <p>
#                   <b>Standard transcriptions</b> are the most common
#                     option. Refer to  for details.</p>
#             </li>
#             <li>
#                <p>
#                   <b>Medical transcriptions</b> are tailored to
#                     medical professionals and incorporate medical terms. A common use case for this
#                     service is transcribing doctor-patient dialogue into after-visit notes. Refer to
#                          for details.</p>
#             </li>
#             <li>
#                <p>
#                   <b>Call Analytics transcriptions</b> are designed
#                     for use with call center audio on two different channels; if you're looking for
#                     insight into customer service calls, use this option. Refer to  for details.</p>
#             </li>
#          </ul>
module Aws::Transcribe
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-transcribe/types'
require_relative 'aws-sdk-transcribe/paginators'
require_relative 'aws-sdk-transcribe/schema'
require_relative 'aws-sdk-transcribe/auth_parameters'
require_relative 'aws-sdk-transcribe/auth_resolver'
require_relative 'aws-sdk-transcribe/client'
require_relative 'aws-sdk-transcribe/customizations'
require_relative 'aws-sdk-transcribe/errors'
require_relative 'aws-sdk-transcribe/endpoint_parameters'
require_relative 'aws-sdk-transcribe/endpoint_provider'
require_relative 'aws-sdk-transcribe/waiters'
