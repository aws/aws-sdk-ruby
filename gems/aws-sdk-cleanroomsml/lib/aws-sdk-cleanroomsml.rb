# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CleanRoomsML', Module.new) unless Aws.const_defined?('CleanRoomsML')

# @title AWS Clean Rooms ML
# <p>Welcome to the <i>Amazon Web Services Clean Rooms ML API Reference</i>.</p> <p>Amazon Web Services Clean Rooms ML provides a privacy-enhancing method for two parties to identify similar users in their data without the need to share their data with each other. The first party brings the training data to Clean Rooms so that they can create and configure an audience model (lookalike model) and associate it with a collaboration. The second party then brings their seed data to Clean Rooms and generates an audience (lookalike segment) that resembles the training data.</p> <p>To learn more about Amazon Web Services Clean Rooms ML concepts, procedures, and best practices, see the <a href="https://docs.aws.amazon.com/clean-rooms/latest/userguide/machine-learning.html">Clean Rooms User Guide</a>.</p> <p>To learn more about SQL commands, functions, and conditions supported in Clean Rooms, see the <a href="https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html">Clean Rooms SQL Reference</a>.</p>
module Aws::CleanRoomsML
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cleanroomsml/types'
require_relative 'aws-sdk-cleanroomsml/paginators'
require_relative 'aws-sdk-cleanroomsml/schema'
require_relative 'aws-sdk-cleanroomsml/auth_parameters'
require_relative 'aws-sdk-cleanroomsml/auth_resolver'
require_relative 'aws-sdk-cleanroomsml/client'
require_relative 'aws-sdk-cleanroomsml/customizations'
require_relative 'aws-sdk-cleanroomsml/errors'
require_relative 'aws-sdk-cleanroomsml/endpoint_parameters'
require_relative 'aws-sdk-cleanroomsml/endpoint_provider'
require_relative 'aws-sdk-cleanroomsml/waiters'
