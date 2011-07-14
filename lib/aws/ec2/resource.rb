# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/model'
require 'aws/cacheable'

module AWS
  class EC2

    # @private
    class Resource

      include Model
      include Cacheable

      def initialize(*args)
        super
        @memoized_attributes = {}
        if options = args.last and
            options.kind_of?(Hash)
          self.class.memoized_attributes.each do |att|
            @memoized_attributes[att] = options[att] if
              options.key?(att)
          end
        end
      end

      def inspect
        "<#{self.class}:#{__resource_id__}>"
      end

      def local_cache_key
        "#{self.class}:#{__resource_id__}"
      end

      def attributes_from_response(response)
        if atts = super
          self.class.memoized_attributes.each do |att|
            @memoized_attributes[att] = atts[att]
          end
          atts
        end
      end

      def ==(other)
        other.kind_of?(self.class) and
          __resource_id__ == other.__resource_id__
      end

      alias_method :eql?, :==

      protected
      def __resource_id__
        send(resource_id_method)
      end

      protected
      def find_in_response(resp)
        resp.send(plural_name + "_set").find do |obj|
          obj.send(response_id_method) == __resource_id__
        end
      end

      protected
      def response_id_method
        # e.g. instance_id
        inflected_name + "_" + resource_id_method.to_s
      end

      protected
      def resource_id_method
        @resource_id_method ||=
          case
          when respond_to?(:id) && method(:id).owner != Kernel
            # id isn't defined on Object in some Ruby versions, in
            # others it is an alias for object_id; if the method is
            # not owned by Kernel we can assume that it has been
            # overridden in a subclass
            :id
          when respond_to?(:name)
            :name
          else
            raise NotImplementedError
          end
      end

      protected
      def describe_call
        name = self.class.describe_call_name
        if client.respond_to?(name)
          client.send(name, Hash[[[(response_id_method.to_s + "s").to_sym,
                                   [__resource_id__]]]])
        else
          raise NotImplementedError
        end
      end

      protected
      def describe_attribute_call(attribute_name)
        name = describe_attribute_call_name
        client.send(name, Hash[[[response_id_method.to_sym,
                                 __resource_id__],
                                [:attribute, attribute_name]]])
      end

      protected
      def get_mutable_attribute(name)
        att_name = Inflection.class_name(name.to_s)
        att_name = att_name[0,1].downcase + att_name[1..-1]
        method_name = "describe_#{inflected_name}_attribute"
        resp = client.send(method_name,
                           Hash[[[:"#{inflected_name}_id", __resource_id__],
                                 [:attribute, att_name]]])
        if att = resp.send(name) and
            att.respond_to?(:value)
          att.value
        else
          nil
        end
      end

      protected
      def set_mutable_attribute(name, input_value)
        value = send("translate_input_for_#{name}", input_value) if
          respond_to?("translate_input_for_#{name}")
        opts = {}
        opts[name] = { :value => value }
        opts["#{inflected_name}_id".to_sym] = __resource_id__
        method_name = "modify_#{inflected_name}_attribute"
        resp = client.send(method_name, opts)
        input_value
      end

      protected
      def attributes_from_response_object(obj)
        atts = {}
        self.class.describe_call_attributes.each do |att, response_att|
          raw_value = (obj.send(response_att) if obj.respond_to?(response_att))
          translated = send("translate_describe_output_for_#{response_att}", raw_value)
          atts[att] = translated
        end
        atts
      end

      protected
      def attributes_from_describe_attribute_response(resp)
        requested_att = resp.request_options[:attribute]
        return nil unless
          resp.request_options[response_id_method.to_sym] == __resource_id__

        response_att = Inflection.ruby_name(requested_att)
        if getter = self.class.mutable_attributes[response_att.to_sym]
          raw_value = resp.send(response_att)
          translated = send("translate_describe_attribute_output_for_#{response_att}", raw_value)
          Hash[[[getter, translated]]]
        end
      end

      module InflectionMethods

        protected
        def describe_call_name
          name = "describe_#{plural_name}"
        end

        protected
        def describe_attribute_call_name
          "describe_#{inflected_name}_attribute"
        end

        protected
        def inflected_name
          Inflection.ruby_name(class_name)
        end

        protected
        def class_name
          self.kind_of?(Class) ? name : self.class.name
        end

        protected
        def plural_name
          name = inflected_name
          name[-1..-1] == 's' ? name : name + "s"
        end

        protected
        def output_translator(name, type)
          "translate_#{type}_output_for_#{name}"
        end

      end

      extend InflectionMethods
      include InflectionMethods

      # @private
      class AttributeBuilder

        include InflectionMethods

        def initialize(klass, name, type)
          @klass = klass
          @name = name
          @type = type
          translate_input { |v| v }
          translate_output { |v| v }
        end

        def translate_input(&blk)
          @klass.send(:define_method, "translate_input_for_#{@name}", &blk)
        end

        def translate_output(&blk)
          @klass.send(:define_method, output_translator(@name, @type), &blk)
        end

        def self.eval(klass, name, type, opts = {}, &blk)
          i = new(klass, name, type)
          i.instance_eval do
            translate_output { |v| v.tr("-","_").to_sym if v } if opts[:to_sym]
            translate_output { |v| v.value if v } if opts[:value_wrapper]
            instance_eval(&blk) if blk
          end
        end
      end

      class NotFound < StandardError; end

      class << self

        def memoized_attributes; []; end

        # @private
        protected
        def describe_call_attribute(name, opts = {}, &blk)
          getter_name = opts[:getter] || name

          # define the accessor
          define_describe_call_getter(getter_name, opts) do |*args|
            begin
              retrieve_attribute(getter_name) { describe_call }
            rescue Cacheable::NoData => e
              name = Inflection.ruby_name(self.class.name).tr("_", " ")
              raise NotFound, "unable to find the #{name}"
            end
          end

          # ensure we are populating from the describe call
          populate_from describe_call_name do |resp|
            if obj = find_in_response(resp)
              attributes_from_response_object(obj)
            end
          end

          # add it to the list of attributes to populate from the response object
          add_to_attribute_map(:describe_call_attributes, getter_name, name)

          if opts[:memoize]
            all_memoized = memoized_attributes
            all_memoized << getter_name
            MetaUtils.extend_method(self, :memoized_attributes) { all_memoized }
          end

          # evaluate translators
          AttributeBuilder.eval(self, name, :describe, opts, &blk)
        end

        protected
        def add_to_attribute_map(map_name, key, value)
          all_attributes = {}
          all_attributes = send(map_name) if respond_to?(map_name)
          all_attributes[key] = value
          MetaUtils.extend_method(self, map_name) do
            all_attributes
          end
        end

        protected
        def define_describe_call_getter(getter_name, opts, &block)
          if opts[:memoize]
            original_block = block
            block = lambda do
              if @memoized_attributes.has_key?(getter_name)
                @memoized_attributes[getter_name]
              else
                instance_eval(&original_block)
              end
            end
          end
          define_method(getter_name, &block)
        end

        # @private
        def mutable_attribute(name, opts = {}, &blk)
          getter = opts[:getter] || name
          setter = opts[:setter] || "#{name}="

          # e.g. "instanceType" or "blockDeviceMapping"
          # as passed to the :attribute option of the service call
          request_name = Inflection.class_name(name.to_s)
          request_name = request_name[0,1].downcase + request_name[1..-1]

          # define the getter and setter
          define_method(getter) do
            retrieve_attribute(getter) { describe_attribute_call(request_name) }
          end
          define_method(setter) do |input_value|
            set_mutable_attribute(name, input_value)
          end unless opts[:setter] == false

          # make sure we will populate from this type of response
          populate_from describe_attribute_call_name do |resp|
            attributes_from_describe_attribute_response(resp)
          end

          # describe how to populate this attribute
          add_to_attribute_map(:mutable_attributes, name, getter)

          # evaluate translations, etc.
          AttributeBuilder.eval(self, name, :describe_attribute,
                                { :value_wrapper => true }.merge(opts), &blk)
        end

      end

    end

  end
end
