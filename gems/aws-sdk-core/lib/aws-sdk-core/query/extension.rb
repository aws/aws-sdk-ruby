# frozen_string_literal: true

module Aws
  module Core
    module Query
      # Lookup helpers for Query/EC2 serde using Smithy XML-derived traits that
      # affect Query/EC2 wire names and structure layout.
      #
      # Raw Smithy trait data remains on +shape.traits+ and +member.traits+ with
      # string keys. This module resolves Query/EC2-specific serde behavior on
      # demand and stores resolved values in metadata:
      # - +shape[:query_name]+ caches the resolved AWS Query wire name
      # - +shape[:ec2_query_name]+ caches the resolved EC2 Query wire name
      # - +shape[:xml_flattened]+ caches whether the shape is flattened on the wire
      # @api private
      module Extension
        extend Smithy::Schema::ExtensionHelpers

        class << self
          # Returns the resolved AWS Query wire name, preferring the Smithy
          # @xmlName trait and caching the result as +shape[:query_name]+.
          def query_name(shape)
            shape[:query_name] ||= shape.traits['smithy.api#xmlName'] || shape.name
          end

          # Returns the resolved EC2 Query wire name, preferring the Smithy
          # @ec2QueryName trait and caching the result as +shape[:ec2_query_name]+.
          def ec2_query_name(shape)
            shape[:ec2_query_name] ||= shape.traits['aws.protocols#ec2QueryName'] || capitalize(query_name(shape))
          end

          # Returns whether the shape is flattened on the Query/EC2 wire, cached
          # as +shape[:xml_flattened]+.
          def flattened?(shape)
            return shape[:xml_flattened] unless shape[:xml_flattened].nil?

            shape[:xml_flattened] = shape.traits.key?('smithy.api#xmlFlattened')
          end

          private

          def capitalize(str)
            return if str.nil?

            str[0].upcase + str[1..]
          end
        end
      end
    end
  end
end
