module Aws
  module Api
    class Customizer

      # @api private
      def initialize(client_class)
        @client_class = client_class
        @api = client_class.api
      end

      # @return [Class<Seahorse::Client::Base>]
      attr_reader :client_class

      # @return [Seahorse::Model::Api]
      attr_reader :api

      # @api private
      def apply(&customizations)
        instance_eval(&customizations)
      end

      # @param [String, Class<Seahorse::Client::Plugin>] plugin
      def add_plugin(plugin)
        @client_class.add_plugin(plugin)
      end

      # @param [String, Class<Seahorse::Client::Plugin>] plugin
      def remove_plugin(plugin)
        @client_class.remove_plugin(plugin)
      end

      def metadata(key, value)
        @client_class.api.definition['metadata'][key] = value
      end

      def add_shape(shape_name, definition)
        @client_class.api.definition['shapes'][shape_name] = definition
      end

      def reshape(shape_name, modifications)
        shape = @client_class.api.definition['shapes'][shape_name]
        shape = deep_merge(shape, modifications)
        @client_class.api.definition['shapes'][shape_name] = shape
      end

      def reshape_members(member_regex, modifications)
        if member_regex.is_a?(String)
          member_regex = /^#{member_regex}$/
        end
        @client_class.api.definition['shapes'].each_value do |shape|
          if shape['members']
            shape['members'].each do |member_name, member_ref|
              if member_name.match(member_regex)
                shape['members'][member_name] = deep_merge(member_ref, modifications)
              end
            end
          end
        end
      end

      def each_operation(&block)
        @client_class.api.definition['operations'].each(&block)
      end

      private

      def deep_merge(first_hash, other_hash)
        first_hash.merge(other_hash) do |key, old, new|
          Hash === old && Hash === new ? deep_merge(old, new) : new
        end
      end

    end
  end
end
