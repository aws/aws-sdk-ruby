# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('GameLiftStreams', Module.new) unless Aws.const_defined?('GameLiftStreams')

# @title Amazon GameLift Streams
# <fullname>Amazon GameLift Streams</fullname> <p>Amazon GameLift Streams provides a global cloud solution for content streaming experiences. Use Amazon GameLift Streams tools to upload and configure content for streaming, deploy and scale computing resources to host streams, and manage stream session placement to meet customer demand.</p> <p>This Reference Guide describes the Amazon GameLift Streams service API. You can use the API through the Amazon Web Services SDK, the Command Line Interface (CLI), or by making direct REST calls through HTTPS.</p> <p>See the <i>Amazon GameLift Streams Developer Guide</i> for more information on how Amazon GameLift Streams works and how to work with it.</p>
module Aws::GameLiftStreams
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-gameliftstreams/types'
require_relative 'aws-sdk-gameliftstreams/paginators'
require_relative 'aws-sdk-gameliftstreams/schema'
require_relative 'aws-sdk-gameliftstreams/auth_parameters'
require_relative 'aws-sdk-gameliftstreams/auth_resolver'
require_relative 'aws-sdk-gameliftstreams/client'
require_relative 'aws-sdk-gameliftstreams/errors'
require_relative 'aws-sdk-gameliftstreams/endpoint_parameters'
require_relative 'aws-sdk-gameliftstreams/endpoint_provider'
require_relative 'aws-sdk-gameliftstreams/waiters'
require_relative 'aws-sdk-gameliftstreams/customizations'
