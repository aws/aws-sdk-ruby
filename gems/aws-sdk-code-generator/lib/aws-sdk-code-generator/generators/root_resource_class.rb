module AwsSdkCodeGenerator
  module Generators
    class RootResourceClass < ResourceClass

      include Helper

      def initialize(api:, resources:nil, paginators:nil)
        resources ||= {}
        super(
          api: api,
          name: 'Resource',
          resource: resources['service'] || {},
          paginators: paginators,
          waiters:nil
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
