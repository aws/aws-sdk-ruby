# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Neptune', Module.new) unless Aws.const_defined?('Neptune')

# @title Amazon Neptune
# <fullname>Amazon Neptune</fullname>
#          <p>Amazon Neptune is a fast, reliable, fully-managed graph database service that makes it
#       easy to build and run applications that work with highly connected datasets. The core of
#       Amazon Neptune is a purpose-built, high-performance graph database engine optimized for
#       storing billions of relationships and querying the graph with milliseconds latency. Amazon
#       Neptune supports popular graph models Property Graph and W3C's RDF, and their respective query
#       languages Apache TinkerPop Gremlin and SPARQL, allowing you to easily build queries that
#       efficiently navigate highly connected datasets. Neptune powers graph use cases such as
#       recommendation engines, fraud detection, knowledge graphs, drug discovery, and network
#       security.</p>
#          <p>This interface reference for Amazon Neptune contains documentation for a programming or
#       command line interface you can use to manage Amazon Neptune. Note that Amazon Neptune is
#       asynchronous, which means that some interfaces might require techniques such as polling or
#       callback functions to determine when a command has been applied. In this reference, the
#       parameter descriptions indicate whether a command is applied immediately, on the next instance
#       reboot, or during the maintenance window. The reference structure is as follows, and we list
#       following some related topics from the user guide.</p>
module Aws::Neptune
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-neptune/types'
require_relative 'aws-sdk-neptune/paginators'
require_relative 'aws-sdk-neptune/schema'
require_relative 'aws-sdk-neptune/auth_parameters'
require_relative 'aws-sdk-neptune/auth_resolver'
require_relative 'aws-sdk-neptune/client'
require_relative 'aws-sdk-neptune/customizations'
require_relative 'aws-sdk-neptune/errors'
require_relative 'aws-sdk-neptune/endpoint_parameters'
require_relative 'aws-sdk-neptune/endpoint_provider'
require_relative 'aws-sdk-neptune/waiters'
