# frozen_string_literal: true

require_relative 'query_extension'

module Aws
  module Core
    # EC2 Query view of cached AWS Query metadata.
    #
    # This facade shares QueryExtension's cache while selecting EC2 Query
    # names and member indexes.
    # @api private
    module Ec2QueryExtension
      class << self
        # Returns the EC2 Query wire name.
        #
        # Example:
        #   Ec2QueryExtension.query_name(member)
        #   # => 'ExampleName'
        def query_name(shape)
          QueryExtension.ec2_query_name(shape)
        end

        # Returns EC2 Query members keyed by Ruby member name.
        #
        # Example:
        #   Ec2QueryExtension.query_index(structure)[:example]
        #   # => ['Example', member]
        def query_index(shape)
          QueryExtension.ec2_query_index(shape)
        end

        # Returns whether a member is flattened in Query XML.
        #
        # Example:
        #   Ec2QueryExtension.flattened?(member)
        #   # => true
        def flattened?(shape)
          QueryExtension.flattened?(shape)
        end

        # Returns the resolved timestamp format.
        #
        # Example:
        #   Ec2QueryExtension.timestamp_format(member)
        #   # => 'epoch-seconds'
        def timestamp_format(shape)
          QueryExtension.timestamp_format(shape)
        end
      end
    end
  end
end
