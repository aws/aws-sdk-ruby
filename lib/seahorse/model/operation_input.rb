
module Seahorse
  module Model
    class OperationInput < Node
      property :params, Symbol => Shape, always_serialize: true
      property :raw_payload, Boolean

      def initialize(*)
        super
        @param_map = nil
      end

      def header_params; params_for('header') end
      def body_params; params_for('body') end
      def uri_params; params_for('uri') end

      def params_for(location)
        build_params[location]
      end

      private

      def build_params
        @param_map ||= params.inject({}) do |hsh, (member_name, shape)|
          (hsh[shape.location] ||= {})[member_name] = shape; hsh
        end
      end
    end
  end
end
