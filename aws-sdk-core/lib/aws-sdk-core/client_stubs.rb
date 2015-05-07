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
        when 0 then new_stub(operation_name.to_sym)
        when 1 then stubs.first
        else stubs.shift
        end
      end
    end

    private

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

      include Seahorse::Model::Shapes

      # @param [Seahorse::Models::Shapes::ShapeRef] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [Hash] data An optional hash of data to format into the stubbed
      #   object.
      def format(data = {})
        if @rules.nil?
          empty_stub(data)
        else
          validate_data(data)
          stub(@rules, data)
        end
      end

      private

      def stub(ref, value)
        case ref.shape
        when StructureShape then stub_structure(ref, value)
        when ListShape then stub_list(ref, value || [])
        when MapShape then stub_map(ref, value || {})
        else stub_scalar(ref, value)
        end
      end

      def stub_structure(ref, hash)
        if hash
          structure_obj(ref, hash)
        else
          nil
        end
      end

      def structure_obj(ref, hash)
        stubs = Structure.new(ref.shape.member_names)
        ref.shape.members.each do |member_name, member_ref|
          if hash.key?(member_name) && hash[member_name].nil?
            stubs[member_name] = nil
          else
            value = structure_value(ref, member_name, member_ref, hash)
            stubs[member_name] = stub(member_ref, value)
          end
        end
        stubs
      end

      def structure_value(ref, member_name, member_ref, hash)
        if hash.key?(member_name)
          hash[member_name]
        elsif
          StructureShape === member_ref.shape &&
          ref.shape.required.include?(member_name)
        then
          {}
        else
          nil
        end
      end

      def stub_list(ref, array)
        stubs = []
        array.each do |value|
          stubs << stub(ref.shape.member, value)
        end
        stubs
      end

      def stub_map(ref, value)
        stubs = {}
        value.each do |key, value|
          stubs[key] = stub(ref.shape.value, value)
        end
        stubs
      end

      def stub_scalar(ref, value)
        if value.nil?
          case ref.shape
          when StringShape then ref.shape.name
          when IntegerShape then 0
          when FloatShape then 0.0
          when BooleanShape then false
          when TimestampShape then Time.now
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
        args = [@rules, { validate_required:false }]
        ParamValidator.new(*args).validate!(data)
      end

    end
  end
end
