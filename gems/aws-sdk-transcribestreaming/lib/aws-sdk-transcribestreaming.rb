# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('TranscribeStreaming', Module.new) unless Aws.const_defined?('TranscribeStreaming')

# @title Amazon Transcribe Streaming Service
# <p>Amazon Transcribe streaming offers four main types of real-time transcription:
#       <b>Standard</b>, <b>Medical</b>,
#       <b>Call Analytics</b>,
#       and <b>Health Scribe</b>.</p>
#          <ul>
#             <li>
#                <p>
#                   <b>Standard transcriptions</b> are the most common option. Refer
#       to  for details.</p>
#             </li>
#             <li>
#                <p>
#                   <b>Medical transcriptions</b> are tailored to medical professionals 
#       and incorporate medical terms. A common use case for this service is transcribing doctor-patient 
#       dialogue in real time, so doctors can focus on their patient instead of taking notes. Refer to
#        for details.</p>
#             </li>
#             <li>
#                <p>
#                   <b>Call Analytics transcriptions</b> are designed for use with call
#           center audio on two different channels; if you're looking for insight into customer service calls, use this 
#           option. Refer to  for details.</p>
#             </li>
#             <li>
#                <p>
#                   <b>HealthScribe transcriptions</b> are designed to
#           automatically create clinical notes from patient-clinician conversations using generative AI.
#           Refer to [here] for details.</p>
#             </li>
#          </ul>
module Aws::TranscribeStreaming
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-transcribestreaming/types'
require_relative 'aws-sdk-transcribestreaming/paginators'
require_relative 'aws-sdk-transcribestreaming/schema'
require_relative 'aws-sdk-transcribestreaming/auth_parameters'
require_relative 'aws-sdk-transcribestreaming/auth_resolver'
require_relative 'aws-sdk-transcribestreaming/client'
require_relative 'aws-sdk-transcribestreaming/customizations'
require_relative 'aws-sdk-transcribestreaming/errors'
require_relative 'aws-sdk-transcribestreaming/endpoint_parameters'
require_relative 'aws-sdk-transcribestreaming/endpoint_provider'
require_relative 'aws-sdk-transcribestreaming/waiters'
