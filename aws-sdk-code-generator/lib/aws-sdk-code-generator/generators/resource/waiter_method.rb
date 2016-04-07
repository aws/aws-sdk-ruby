module AwsSdkCodeGenerator
  module Generators
    module Resource
      class WaiterMethod < Dsl::Method

        def initialize(resource_name:, resource:, resource_waiter_name:, resource_waiter:, waiter:)
          @resource = resource
          @resource_waiter = resource_waiter
          @waiter_name = resource_waiter['waiterName']

          super("wait_until_#{underscore(resource_waiter_name)}")
          param('options', default:{})
          option(name: 'max_attempts', type:Integer, default: waiter['maxAttempts'])
          option(name: 'delay', type:Float, default: waiter['delay'])
          option(name: 'before_attempt', type:Proc)
          option(name: 'before_wait', type:Proc)

          returns(resource_name)

          code("waiter = Waiters::#{@waiter_name}.new(options.merge(client: @client))")
          resp = @resource_waiter['path'] ? 'resp = ' : ''
          code("#{resp}waiter.wait(#{args})")
          code("#{resource_name}.new(#{constructor_args})")
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
