# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceWaiter

    # @return [String]
    attr_accessor :name

    attr_accessor :client_waiter_name

    # @return [String]
    attr_accessor :waiter_class_name

    # @return [Integer]
    attr_accessor :delay

    # @return [Integer]
    attr_accessor :max_attempts

    # @return [String<Ruby>]
    attr_accessor :wait_call

    # @return [String<Ruby>]
    attr_accessor :constructor_args

    class << self

      # @param [Hash] resource
      # @param [Hash, nil] client_waiters
      # @return [Array<ResourceWaiter>]
      def build_list(resource, client_waiters)
        client_waiters = Waiter.build_list(client_waiters)
        (resource['waiters'] || {}).map do |name, waiter|
          client_waiter = client_waiters.find do |w|
            w.name == Underscore.underscore(waiter['waiterName'])
          end
          ResourceWaiter.new.tap do |w|
            w.name = Underscore.underscore(name)
            w.client_waiter_name = client_waiter.name
            w.waiter_class_name = client_waiter.class_name
            w.delay = client_waiter.delay
            w.max_attempts = client_waiter.max_attempts
            w.wait_call = wait_call(waiter)
            w.constructor_args = constructor_args(resource, waiter)
          end
        end
      end

      private

      def wait_call(waiter)
        args = ResourceClientRequestParams.new(
          params: waiter['params']
        ).to_s.strip
        parts = []
        parts << 'resp = ' if waiter['path']
        parts << "Aws::Plugins::UserAgent.feature('resource') do\n"
        parts << "  waiter.wait(params.merge(#{args}))"
        parts << "\nend"
        parts.join
      end

      def constructor_args(resource, waiter)
        args = {}
        (resource['identifiers'] || []).each do |i|
          name = Underscore.underscore(i['name']).to_sym
          args[name] = "@#{name}"
        end
        if waiter['path']
          args[:data] = ResourceValueSource.new(
            'source' => 'response',
            'path' => waiter['path']
          )
        end
        args[:client] = '@client'
        HashFormatter.new(wrap: false).format(args)[1..-2]
      end

    end
  end
end
