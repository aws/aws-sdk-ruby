module AwsSdkCodeGenerator
  module Generators
    module Resource
      class WaiterMethod < Dsl::Method

        # @option options [required, String] :resource_name
        # @option options [required, Hash] :resource
        # @option options [required, String] :resource_waiter_name
        # @option options [required, Hash] :resource_waiter
        # @option options [required, Hash] :waiter
        def initialize(options)
          resource_name = options.fetch(:resource_name)
          @resource = options.fetch(:resource)
          @resource_waiter = options.fetch(:resource_waiter)
          @waiter_name = @resource_waiter['waiterName']
          waiter = options.fetch(:waiter)
          super("wait_until_#{underscore(options.fetch(:resource_waiter_name))}")
          param('options', default:{})
          option(name: 'max_attempts', type:Integer, default: waiter['maxAttempts'])
          option(name: 'delay', type:Float, default: waiter['delay'])
          option(name: 'before_attempt', type:Proc)
          option(name: 'before_wait', type:Proc)

          returns(resource_name)

          resp = @resource_waiter['path'] ? 'resp = ' : ''
          code(<<-CODE)
waiter = Waiters::#{@waiter_name}.new(options.merge(client: @client))
yield_waiter_and_warn(waiter, &Proc.new) if block_given?
#{resp}waiter.wait(#{args})
#{resource_name}.new(#{constructor_args})
          CODE
        end

        private

        def args
          ClientRequestParams.new(params: @resource_waiter['params']).to_s.strip
        end

        def constructor_args
          args = {}
          (@resource['identifiers'] || []).each do |i|
            name = underscore(i['name']).to_sym
            args[name] = "@#{name}"
          end
          if @resource_waiter['path']
            args[:data] = ValueSource.new(
              'source' => 'response',
              'path' => @resource_waiter['path']
            )
          end
          args[:client] = '@client'
          HashFormatter.new.format(args)
        end

      end
    end
  end
end
