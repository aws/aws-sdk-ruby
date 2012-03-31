
# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS
  module Core

    # @private
    class Resource
  
      include Model
      include Cacheable
  
      # @private
      class NotFound < StandardError; end
  
      # @private
      def initialize *args
  
        super
  
        # cache static attributes passed into options
  
        options = args.last.is_a?(Hash) ? args.last : {}
        options.each_pair do |opt_name,opt_value|
          if 
            self.class.attributes.has_key?(opt_name) and
            self.class.attributes[opt_name].static?
          then
            static_attributes[opt_name] = opt_value
          end
        end
  
      end
  
      # @return [String] Returns a simple string representation of this resource.
      def inspect
  
        identifiers = []
        resource_identifiers.each do |key, value|
          if attr = self.class.attributes.values.find{|a| a.get_as == key }
            identifiers << "#{attr.name}:#{value}"
          else
            identifiers << "#{key}:#{value}"
          end
        end
  
        "<#{self::class} #{identifiers.join(' ')}>"
  
      end
  
      # @return [Boolean] Returns true if the objects references the same
      #   AWS resource.
      def eql? other
        other.kind_of?(self.class) and 
        other.resource_identifiers == resource_identifiers
      end
      alias_method :==, :eql?
  
      # @private
      protected
      def get_resource attr_name
        raise NotImplementedError
      end
  
      # @private
      protected
      def update_resource attr, value
        raise NotImplementedError
      end
  
      # Overide this method is subclasses of Resource.  This method should 
      # return an array of identifying key/value pairs.
      #
      #   # @private
      #   protected
      #   def resource_identifiers
      #     [[:user_name, name]]
      #   end
      # 
      # @private
      protected
      def resource_identifiers
        raise NotImplementedError
      end
  
      # @protected
      protected
      def resource_options(additional = {})
        Hash[resource_identifiers].merge(additional)
      end
  
      # @private
      protected
      def local_cache_key
        resource_identifiers.collect{|name,value| value.to_s }.join(":")
      end
  
      # @private
      protected
      def static_attributes
        @static_attributes ||= {}
      end
  
      # @private
      protected
      def ruby_name
        @ruby_name ||= Inflection.ruby_name(self.class.name)
      end
  
      # @private
      public
      def attributes_from_response resp
  
        attributes = {}
  
        self.class.attribute_providers_for(resp.request_type).each do |provider|
          attributes.merge!(provider.attributes_from_response(self, resp))
        end
  
        # cache static attributes
        attributes.each do |attr_name,value|
          if self.class.attributes[attr_name].static?
            static_attributes[attr_name] = value
          end
        end
  
        attributes.empty? ? nil : attributes
  
      end
  
      # @private
      protected
      def cache_static_attributes request_type, resp_obj
        self.class.attribute_providers_for(request_type).each do |provider|
          attributes = provider.attributes_from_response_object(resp_obj)
          attributes.each_pair do |attr_name,value|
            if self.class.attributes[attr_name].static?
              static_attributes[attr_name] = value
            end
          end
        end
      end
  
      class << self
  
        # @private
        def new_from request_type, resp_obj, *args
          resource = new(*args)  
          resource.send(:cache_static_attributes, request_type, resp_obj)
          resource
        end
  
        # @private
        def attributes
          @attributes ||= Hash.new do |hash,attr_name|
            raise "uknown attribute #{attr_name}"
          end
        end
  
        # @private
        def attribute_providers
          @attribute_providers ||= []
        end
  
        # @private
        def attribute_providers_for request_type
          attribute_providers.select do |provider|
            provider.request_types.include?(request_type)
          end
        end
  
        # @private
        protected
        def attribute name, options = {}, &block
          attr = Attribute.new(name, options)
          attr.instance_eval(&block) if block_given?
          define_attribute_getter(attr)
          define_attribute_setter(attr) if attr.mutable?
          attributes[attr.name] = attr
        end
  
        # @private
        protected
        def mutable_attribute name, options = {}, &block
          attribute(name, options.merge(:mutable => true), &block)
        end
  
        # @private
        protected
        def define_attribute_getter attribute
          define_method(attribute.name) do
            
            return static_attributes[attribute.name] if 
              static_attributes.has_key?(attribute.name)
  
            begin
              retrieve_attribute(attribute) { get_resource(attribute) }
            rescue Cacheable::NoData => e
              name = ruby_name.tr("_", " ")
              raise NotFound, "unable to find the #{name}"
            end
  
          end
        end
  
        # @private
        protected
        def define_attribute_setter attribute
          setter = attribute.name.to_s.sub(/\?/, '') + '='
          define_method(setter) do |value|
            translated_value = attribute.translate_input_value(value)
            update_resource(attribute, translated_value)
            if attribute.static?
              static_attributes[attribute.name] = translated_value
            end
            value
          end
        end
  
        # @private
        protected
        def populates_from *request_types, &block
          provider = provider(*request_types)
          provider.find(&block)
          provider.provides(*attributes.keys)
          provider
        end
  
        # @private
        protected
        def provider *request_types, &block
          provider = AttributeProvider.new(self, request_types)
          if block_given?
            yield(provider)
          end
          attribute_providers << provider 
          provider
        end
  
      end
  
      # @private
      class Attribute
  
        def initialize name, options = {}
          @name = name
          @options = options
          @request_types = []
        end
  
        attr_reader :name
  
        attr_reader :request_types
  
        def get_as
          @get_as ||= (@options[:get_as] || @options[:as] || name)
        end
  
        def set_as
          @set_as ||= (@options[:set_as] || @options[:as] || name)
        end
  
        def mutable?
          @options[:mutable] == true
        end
  
        def static?
          @options[:static] == true
        end
  
        def translates_input &block
          @input_translator = block
        end
  
        def translates_output options = {}, &block
          @translates_nil = options[:nil]
          @output_translator = block
        end
  
        def translate_input_value value
          @input_translator ? @input_translator.call(value) : value
        end
  
        def translate_output_value value
  
          # by default nil values are not translated
          return nil if value.nil? and @translates_nil != true
  
          case
          when @options[:to_sym]    then value.tr('-','_').downcase.to_sym
          when @options[:timestamp] then Time.at(value.to_i)
          when @output_translator   then @output_translator.call(value)
          else value
          end
  
        end
  
      end
  
      # @private
      class AttributeProvider
  
        def initialize klass, request_types
          @klass = klass
          @id = klass.attribute_providers.length
          @request_types = request_types
          @provides = {}
        end
  
        attr_reader :request_types
  
        def find &block
          @klass.send(:define_method, finder_method, &block)
        end
  
        def finder_method
          "_find_in_#{request_types.join('_or_')}_response_#{@id}"
        end
  
        # Indicates that all of the the named attributes can be retrieved
        # from an appropriate response object.
        # 
        # @param [Symbol] attr_names A list of attributes provided
        # @param [Hash] options
        # @option options [Boolean] :value_wrapped (false) If true, then
        #   the value returned by the response object will also receive
        #   the message :value before it is translated and returned.
        # @option options [Symbol] :get_as Defaults to the method named
        #   by the attribute.  This is useful when you have two providers
        #   for the same attribute but their response object name
        #   them differently.
        def provides *attr_names
          options = attr_names.last.is_a?(Hash) ? attr_names.pop : {}
          attr_names.each do |attr_name|
            attr = @klass.attributes[attr_name]
            attr.request_types.push(*request_types)
            @provides[attr_name] = options
          end
        end
  
        def attributes_from_response resource, response
          if response_object = resource.send(finder_method, response)
            attributes_from_response_object(response_object)
          else
            {}
          end
        end
  
        def attributes_from_response_object resp_obj
          attributes = {}
          @provides.each do |attr_name, options|
  
            attr = @klass.attributes[attr_name]
            method = options[:get_as] || attr.get_as
  
            v = case
            when resp_obj.respond_to?(:key?) && resp_obj.key?(method.to_s)
              resp_obj[method.to_s]
            when resp_obj.respond_to?(method)
              resp_obj.send(method)
            else
              nil
            end
            v = v.value if v and options[:value_wrapped]
            v = attr.translate_output_value(v)
  
            attributes[attr_name] = v
  
          end
          attributes
        end
  
      end
    end
  end
end
