# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('VPCLattice', Module.new) unless Aws.const_defined?('VPCLattice')

# @title Amazon VPC Lattice
# <p>Amazon VPC Lattice is a fully managed application networking service that you use to connect, secure, and monitor all of your services across multiple accounts and virtual private clouds (VPCs). Amazon VPC Lattice interconnects your microservices and legacy services within a logical boundary, so that you can discover and manage them more efficiently. For more information, see the <a href="https://docs.aws.amazon.com/vpc-lattice/latest/ug/">Amazon VPC Lattice User Guide</a> </p>
module Aws::VPCLattice
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-vpclattice/types'
require_relative 'aws-sdk-vpclattice/paginators'
require_relative 'aws-sdk-vpclattice/schema'
require_relative 'aws-sdk-vpclattice/auth_parameters'
require_relative 'aws-sdk-vpclattice/auth_resolver'
require_relative 'aws-sdk-vpclattice/client'
require_relative 'aws-sdk-vpclattice/customizations'
require_relative 'aws-sdk-vpclattice/errors'
require_relative 'aws-sdk-vpclattice/endpoint_parameters'
require_relative 'aws-sdk-vpclattice/endpoint_provider'
require_relative 'aws-sdk-vpclattice/waiters'
