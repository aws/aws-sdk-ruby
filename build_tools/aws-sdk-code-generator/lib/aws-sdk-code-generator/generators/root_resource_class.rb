module AwsSdkCodeGenerator
  module Generators
    class RootResourceClass < ResourceClass

      include Helper

      # @option options [required, Hash] :api
      # @option options [required, String] :var_name
      # @option options [Hash] :resources
      # @option options [Hash] :paginators
      def initialize(options)
        resources = options.fetch(:resources) || {}
        super(
          api: options.fetch(:api),
          name: 'Resource',
          resource: resources.fetch('service', {}),
          paginators: options.fetch(:paginators, nil) || {},
          waiters:nil,
          var_name: options.fetch(:var_name)
        )
      end

      private

      def build
        add(initialize_method)
        add(client_getter)
        apply_actions
        apply_associations
      end

      def initialize_method
        Dsl::Method.new('initialize') do |m|
          m.param('options', default:{})
          m.option(name:'client', type:'Client')
          m.code('@client = options[:client] || Client.new(options)')
        end
      end

    end
  end
end
