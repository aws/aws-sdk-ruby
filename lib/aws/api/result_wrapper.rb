module Aws
  module Api

    # All AWS Query services, expect EC2 wrap their response elements inside
    # an extra element that is not described in the source API.  These wrappers
    # are always the operation name + "Result".
    #
    # This module wraps the operation output element with a matching element
    # and applies the response metadata element that also appears across
    # the same services.
    module ResultWrapper
      class << self

        def wrap_output(operation_method_name, operation)
          output = Seahorse::Model::Shapes::OutputShape.new
          add_result_member(output, operation_method_name, operation)
          add_response_metadata_member(output)
          operation.output = output
        end

        private

        def add_result_member(output, operation_method_name, operation)
          unless operation.output.empty?
            struct = operation.output.to_hash
            struct['type'] = 'structure'
            struct['serialized_name'] = "#{operation.name}Result"
            struct = Seahorse::Model::Shapes::Shape.from_hash(struct)
            output.members[:"#{operation_method_name}_result"] = struct
          end
        end

        def add_response_metadata_member(output)
          output.members[:response_metadata] =
            Seahorse::Model::Shapes::Shape.from_hash(
              'type' => 'structure',
              'serialized_name' => 'ResponseMetadata',
              'members' => {
                'request_id' => {
                  'type' => 'string',
                  'serialized_name' => 'RequestId'
                }
              }
            )
        end

      end
    end
  end
end
