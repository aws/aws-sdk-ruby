# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SimSpaceWeaver', Module.new) unless Aws.const_defined?('SimSpaceWeaver')

# @title AWS SimSpace Weaver
# <p>SimSpace Weaver (SimSpace Weaver)  is a service that you can use to build and run 
#          large-scale spatial simulations in the Amazon Web Services Cloud. For example, you can create
#          crowd simulations, large real-world environments, and immersive and interactive experiences.
#          For more information about SimSpace Weaver, see the <i>
#                <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/">SimSpace Weaver User Guide</a>
#             </i>.</p>
#          <p>This API reference describes the API operations and data types that you can use to
#          communicate directly with SimSpace Weaver.</p>
#          <p>SimSpace Weaver also provides the SimSpace Weaver app SDK, which you use for app development. The
#          SimSpace Weaver app SDK API reference is included in the SimSpace Weaver app SDK documentation. This
#          documentation is part of the SimSpace Weaver app SDK distributable package.</p>
module Aws::SimSpaceWeaver
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-simspaceweaver/types'
require_relative 'aws-sdk-simspaceweaver/paginators'
require_relative 'aws-sdk-simspaceweaver/schema'
require_relative 'aws-sdk-simspaceweaver/auth_parameters'
require_relative 'aws-sdk-simspaceweaver/auth_resolver'
require_relative 'aws-sdk-simspaceweaver/client'
require_relative 'aws-sdk-simspaceweaver/customizations'
require_relative 'aws-sdk-simspaceweaver/errors'
require_relative 'aws-sdk-simspaceweaver/endpoint_parameters'
require_relative 'aws-sdk-simspaceweaver/endpoint_provider'
require_relative 'aws-sdk-simspaceweaver/waiters'
