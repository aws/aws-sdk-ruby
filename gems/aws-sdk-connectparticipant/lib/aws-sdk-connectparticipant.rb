# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ConnectParticipant', Module.new) unless Aws.const_defined?('ConnectParticipant')

# @title Amazon Connect Participant Service
# <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Participant_Service.html">Participant Service actions</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Participant_Service.html">Participant Service data types</a>
#                </p>
#             </li>
#          </ul>
#          <p>Amazon Connect is an easy-to-use omnichannel cloud contact center service that
#             enables companies of any size to deliver superior customer service at a lower cost.
#                 Amazon Connect communications capabilities make it easy for companies to deliver
#             personalized interactions across communication channels, including chat. </p>
#          <p>Use the Amazon Connect Participant Service to manage participants (for example,
#             agents, customers, and managers listening in), and to send messages and events within a
#             chat contact. The APIs in the service enable the following: sending chat messages,
#             attachment sharing, managing a participant's connection state and message events, and
#             retrieving chat transcripts.</p>
module Aws::ConnectParticipant
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connectparticipant/types'
require_relative 'aws-sdk-connectparticipant/paginators'
require_relative 'aws-sdk-connectparticipant/schema'
require_relative 'aws-sdk-connectparticipant/auth_parameters'
require_relative 'aws-sdk-connectparticipant/auth_resolver'
require_relative 'aws-sdk-connectparticipant/client'
require_relative 'aws-sdk-connectparticipant/errors'
require_relative 'aws-sdk-connectparticipant/endpoint_parameters'
require_relative 'aws-sdk-connectparticipant/endpoint_provider'
require_relative 'aws-sdk-connectparticipant/waiters'
require_relative 'aws-sdk-connectparticipant/customizations'
