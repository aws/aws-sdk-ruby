require 'thread'

module Aws

  # This module provides the ability to specify the data and/or errors to
  # return when a client is using stubbed responses. Pass
  # `:stub_responses => true` to a client constructor to enable this
  # behavior.
  module ClientStubs

    # @api private
    def self.included(subclass)
      subclass.add_plugin('Aws::Plugins::StubResponses')
    end

    def initialize(*args)
      @stubs = {}
      @stub_mutex = Mutex.new
      super
    end

    # Configures what data / errors should be returned from the named operation
    # when response stubbing is enabled.
    #
    # ## Basic usage
    #
    # By default, fake responses are generated. You can override the default
    # fake data with specific response data by passing a hash.
    #
    #     # enable response stubbing in the client constructor
    #     client = Aws::S3::Client.new(stub_responses: true)
    #
    #     # specify the response data for #list_buckets
    #     client.stub_responses(:list_buckets, buckets:[{name:'aws-sdk'}])
    #
    #     # no api calls made, stub returned
    #     client.list_buckets.map(&:name)
    #     #=> ['aws-sdk']
    #
    # ## Stubbing Errors
    #
    # When stubbing is enabled, the SDK will default to generate
    # fake responses with placeholder values. You can override the data
    # returned. You can also specify errors it should raise.
    #
    #     client.stub_responses(:get_object, 'NotFound')
    #     client.get_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises Aws::S3::Errors::NotFound
    #
    #     client.stub_responses(:get_object, Timeout::Error)
    #     client.get_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises new Timeout::Error
    #
    #     client.stub_responses(:get_object, RuntimeError.new('custom message'))
    #     client.get_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises the given runtime error object
    #
    # ## Stubbing Multiple Responses
    #
    # Calling an operation multiple times will return similar responses.
    # You can configure multiple stubs and they will be returned in sequence.
    #
    #
    #     client.stub_responses(:head_object, [
    #       'NotFound',
    #       { content_length: 150 },
    #     ])
    #
    #     client.head_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises Aws::S3::Errors::NotFound
    #
    #     resp = client.head_object(bucket:'aws-sdk', key:'foo')
    #     resp.content_length #=> 150
    #
    # @param [Symbol] operation_name
    # @param [Mixed] stubs One or more responses to return from the named
    #   operation.
    # @return [void]
    # @raise [RuntimeError] Raises a runtime error when called
    #   on a client that has not enabled response stubbing via
    #   `:stub_responses => true`.
    def stub_responses(operation_name, *stubs)
      if config.stub_responses
        apply_stubs(operation_name, stubs.flatten)
      else
        msg = 'stubbing is not enabled; enable stubbing in the constructor '
        msg << 'with `:stub_responses => true`'
        raise msg
      end
    end

    # @api private
    def next_stub(operation_name)
      @stub_mutex.synchronize do
        stubs = @stubs[operation_name.to_sym] || []
        case stubs.length
        when 0 then new_stub(operation_name)
        when 1 then stubs.first
        else stubs.shift
        end
      end
    end

    private

    # @param [Symbol] operation_name
    # @param [Hash, nil] data
    # @return [Structure]
    def new_stub(operation_name, data = nil)
      Stub.new(operation(operation_name).output).format(data || {})
    end

    def apply_stubs(operation_name, stubs)
      @stub_mutex.synchronize do
        @stubs[operation_name.to_sym] = stubs.map do |stub|
          case stub
          when Exception then stub
          when String then service_error_class(stub)
          when Hash then new_stub(operation_name, stub)
          else stub
          end
        end
      end
    end

    def service_error_class(name)
      svc_module = Aws.const_get(self.class.name.split('::')[1])
      svc_module.const_get(:Errors).const_get(name)
    end

    class Stub

      # @param [Seahorse::Models::Shapes::Structure] output_shape This should
      #   be the output shape for an operation.
      def initialize(output_shape)
        @shape = output_shape
      end

      # @param [Hash] data An optional hash of data to format into the stubbed
      #   object.
      def format(data = {})
        if @shape.nil?
          empty_stub(data)
        else
          validate_data(data)
          stub(@shape, data)
        end
      end

      private

      def stub(shape, value)
        case shape
        when Seahorse::Model::Shapes::Structure then stub_structure(shape, value)
        when Seahorse::Model::Shapes::List then stub_list(shape, value || [])
        when Seahorse::Model::Shapes::Map then stub_map(shape, value || {})
        else stub_scalar(shape, value)
        end
      end

      def stub_structure(shape, hash)
        if hash
          structure_obj(shape, hash)
        else
          nil
        end
      end

      def structure_obj(shape, hash)
        stubs = Structure.new(shape.member_names)
        shape.members.each do |member_name, member_shape|
          if hash.key?(member_name) && hash[member_name].nil?
            stubs[member_name] = nil
          else
            value = structure_value(shape, member_name, member_shape, hash)
            stubs[member_name] = stub(member_shape, value)
          end
        end
        stubs
      end

      def structure_value(shape, member_name, member_shape, hash)
        if hash.key?(member_name)
          hash[member_name]
        elsif
          Seahorse::Model::Shapes::Structure === member_shape &&
          shape.required.include?(member_name)
        then
          {}
        else
          nil
        end
      end

      def stub_list(shape, array)
        stubs = []
        array.each do |value|
          stubs << stub(shape.member, value)
        end
        stubs
      end

      def stub_map(shape, value)
        stubs = {}
        value.each do |key, value|
          stubs[key] = stub(shape.value, value)
        end
        stubs
      end

      def stub_scalar(shape, value)
        if value.nil?
          case shape
          when Seahorse::Model::Shapes::String then shape.name
          when Seahorse::Model::Shapes::Integer then 0
          when Seahorse::Model::Shapes::Float then 0.0
          when Seahorse::Model::Shapes::Boolean then false
          when Seahorse::Model::Shapes::Timestamp then Time.now
          else nil
          end
        else
          value
        end
      end

      def empty_stub(data)
        if data.empty?
          Structure.new(data)
        else
          msg = 'unable to generate a stubbed response from the given data; '
          msg << 'this operation does not return data'
          raise ArgumentError, msg
        end
      end

      def validate_data(data)
        args = [@shape, { validate_required:false }]
        Seahorse::Client::ParamValidator.new(*args).validate!(data)
      end

    end
  end
end
