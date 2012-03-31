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

require 'rexml/document'
require 'rexml/streamlistener'
require 'base64'
require 'time'

begin
  require 'nokogiri'
rescue LoadError => e
end

module AWS
  module Core

    # @private
    class XmlGrammar
      
      # @private
      class Context
  
        def initialize
          @data = {}
        end
  
        def id
          @data[:id]
        end
  
        def method_missing(m, *args)
          key = m.to_sym
  
          return super unless @data.key?(key)
          @data[key]
        end
  
        def respond_to?(m)
          @data.key?(m.to_sym) or super
        end
        
        def to_hash
          @data.inject({}) do |hash,(key,value)|

            # strip question marks from hash keys
            if matches = key.to_s.match(/(.+)\?$/)
              key = matches[1].to_sym
            end

            # recursively convert hashes
            if value.is_a?(Array)
              value = value.map{|v| v.is_a?(Context) ? v.to_hash : v }
            elsif value.is_a?(Context)
              value = value.to_hash
            end

            hash.merge(key => value)

          end
        end
  
        def inspect
          methods = @data.keys
          "<Object #{methods.reject{|m| m =~ /=$/ }.join(', ')}>" 
        end
  
        # this gets called a LOT during response parsing, and having
        # it be a public method is the fastest way to call it.
        # Strictly speaking it should be private.
        # @private
        def __set_data__(getter, value)
          @data[getter.to_sym] = value
        end
  
      end
  
      # @private
      class CustomizationContext < Hash
  
        def initialize(element_name = nil)
          original_store(:children, {})
  
          if element_name
            original_store(:name, element_name)
            recompute_accessors
          end
        end
  
        alias_method :original_store, :[]=
  
        def []=(name, value)
          super
          if respond_to?("changed_#{name}")
            send("changed_#{name}", value)
          end
        end
  
        def changed_boolean(value)
          recompute_accessors
        end
  
        def changed_renamed(value)
          recompute_accessors
        end
  
        def deep_copy(hash = self)
          fields = hash.inject({}) do |copy,(key,value)|
            if value.is_a?(CustomizationContext)
              value = value.deep_copy
            elsif value.is_a?(Hash)
              value = deep_copy(value)
            end
            copy[key] = value
            copy
          end
          hash.merge(fields)
        end
  
        private
        def recompute_accessors
          ruby_name = Inflection.ruby_name((self[:renamed] ||
                                            self[:name]).to_s)
          self[:getter] =
            if self[:boolean] && ruby_name != "value"
              "#{ruby_name}?"
            else
              ruby_name
            end
          self[:setter] = "#{ruby_name}="
        end
  
      end
  
      # @private
      class << self
  
        def parse xml, options = {}
  
          context = options[:context] || Context.new
  
          if defined? Nokogiri
            parser = Parser.new(context, customizations)
            parser.extend(NokogiriAdapter)
            xml = "<foo/>" if xml.empty?
            Nokogiri::XML::SAX::Parser.new(parser).parse(xml.strip)
          else
            parser = Parser.new(context, customizations)
            parser.extend(REXMLSaxParserAdapter)
            REXML::Parsers::StreamParser.new(REXML::Source.new(xml), parser).parse
          end
  
          context
  
        end
  
        def simulate context = nil
          StubResponse.new(customizations, context)
        end
  
        def customize config = nil, &block
          grammar = Class.new(self)
          grammar.customizations = customizations.deep_copy
          grammar.config_eval(config) if config
          grammar.module_eval(&block) if block_given?
          grammar
        end
  
        def element element_name, &block
          eval_customization_context(element_name, &block)
        end
  
        def add_method method_name, &block
          format_value do |value|
            MetaUtils.extend_method(value = super(value), method_name, &block)
            value
          end
  #           different strategey, slightly different behavior
  #           element(method_name.to_s) do
  #             format_value(&block)
  #             force
  #           end
        end
    
        def ignore
          @current[:ignored] = true
        end
  
        def rename new_name
          @current[:renamed] = new_name.to_s
        end
  
        def force
          @current[:forced] = true
        end
  
        def collect_values
          @current[:collected] = true
          @current[:initial_collection] = lambda { [] }
          @current[:add_to_collection] =
            lambda { |ary, val| ary << val }
          force
        end
  
        def index(name, &block)
          (@customizations[:index_names] ||= []) << name
          @current[:indexed] = [name, block]
        end
  
        def boolean_value
          @current[:boolean] = true
          format_value {|value| super(value) == 'true' }
        end
        # required by the hash configuration method
        alias_method :boolean, :boolean_value
  
        TRANSLATE_DIGITS = ['0123456789'.freeze, ('X'*10).freeze]
        EASY_FORMAT = "XXXX-XX-XXTXX:XX:XX.XXXZ".freeze
        DATE_PUNCTUATION = ['-:.TZ'.freeze, (' '*5).freeze]
  
        def datetime_value
          datetime_like_value(DateTime, :civil)
        end
  
        def time_value
          datetime_like_value(Time, :utc)
        end
        alias_method :timestamp, :time_value
  
        def datetime_like_value(klass, parts_constructor)
          format_value do |value|
            value = super(value)
            if value and value.tr(*TRANSLATE_DIGITS) == EASY_FORMAT
  
              # it's way faster to parse this specific format manually
              # vs. DateTime#parse, and this happens to be the format
              # that AWS uses almost (??) everywhere.
  
              parts = value.tr(*DATE_PUNCTUATION).
                chop.split.map { |elem| elem.to_i }
              klass.send(parts_constructor, *parts)
            elsif value
              # fallback in case we have to handle another date format
              klass.parse(value)
            else
              nil
            end
          end
        end
  
        def integer_value
          format_value do |value|
            value = super(value)
            value.nil? ? nil : value.to_i
          end
        end
        # required by the hash configuration method
        alias_method :integer, :integer_value
        alias_method :long, :integer_value
  
        def float_value
          format_value do |value|
            value = super(value)
            value.nil? ? nil : value.to_f
          end
        end
  
        alias_method :float, :float_value

        def symbol_value
          format_value do |value|
            value = super(value)
            ['', nil].include?(value) ? nil : Inflection.ruby_name(value).to_sym
          end
        end

        def blob_value
          format_value do |value|
            value = super(value)
            Base64.decode64(value) if value
          end
        end
        alias_method :blob, :blob_value

        def format_value &block
          @current[:value_formatter] ||= ValueFormatter.new
          @current[:value_formatter].extend_format_value(&block)
        end
  
        def list child_element_name = nil, &block
          if child_element_name
            ignore
            parent_element_name = @current_name
            element(child_element_name) do
              rename(parent_element_name)
              collect_values
              yield if block_given?
            end
          else
            collect_values
          end
        end
  
        def map_entry(key, value)
          collect_values
          element(key) { rename :key }
          element(value) { rename :value }
          @current[:initial_collection] = lambda { {} }
          @current[:add_to_collection] = lambda do |hash, entry|
            hash[entry.key] = entry.value
          end
        end
  
        def map entry_name, key, value
          parent_element_name = @current_name
          ignore
          element(entry_name) do
            rename(parent_element_name)
            map_entry(key, value)
          end
        end
  
        def wrapper method_name, options = {}, &blk
          if block_given?
            customizations =
              eval_customization_context(method_name,
                                         CustomizationContext.new(method_name),
                                         &blk)
            raise NotImplementedError.new("can't customize wrapped " +
                                          "elements within the wrapper") unless
              customizations[:children].empty?
            @current[:wrapper_frames] ||= {}
            @current[:wrapper_frames][method_name] = customizations
          end
  
          (options[:for] || []).each do |element_name|
            element element_name do
              @current[:wrapper] ||= []
              @current[:wrapper] << method_name
            end
          end
        end
  
        def construct_value &block
          @current[:construct_value] = block
        end
  
        def eql? other
          self.customizations == other.customizations
        end
  
        protected
        def initial_customizations(element_name = nil)
          CustomizationContext.new(element_name)
        end
  
        protected
        def eval_customization_context name, initial = nil, &block
          current_name = @current_name
          current = @current
          parent = @parent
          begin
            @current_name = name
            @parent = @current
            initial ||= customizations_for(name)
            @current = initial
            yield if block_given?
          ensure
            @current_name = current_name
            @current = current
            @parent = parent
          end
  
          # will be modified to include the customizations defined in
          # the block
          initial
        end
  
        protected
        def config_eval(config)
          config.each do |item|
            (type, identifier, args) = parse_config_item(item)
            case type
            when :method
              validate_config_method(identifier)
              validate_args(identifier, args)
              send(identifier, *args)
            when :element
              element(identifier) do
                config_eval(args)
              end
            end
          end
        end
  
        protected
        def validate_args(identifier, args)
          arity = method(identifier).arity
          if args.length > 0
            raise "#{identifier} does not accept an argument" if
              arity == 0
          else
            raise "#{identifier} requires an argument" unless
              arity == 0 || arity == -1
          end
        end
  
        protected
        def parse_config_item(item)
          case item
          when Symbol
            [:method, item, []]
          when Hash
            (method, arg) = item.to_a.first
            if method.kind_of?(Symbol)
              [:method, method, [arg].flatten]
            else
              [:element, method, arg]
            end
          end
        end
  
        protected
        def validate_config_method(method)
          allow_methods = %w(
            rename attribute_name boolean integer long float list force
            ignore collect_values symbol_value timestamp map_entry map
            blob
          )
          unless allow_methods.include?(method.to_s)
            raise "#{method} cannot be used in configuration"
          end
        end
  
        protected
        def customizations
          @customizations ||= CustomizationContext.new
        end
  
        protected
        def customizations_for element_name
          if @parent
            @parent[:children][element_name] ||=
              CustomizationContext.new(element_name)
          else
            customizations[:children][element_name] ||=
              CustomizationContext.new(element_name)
          end
        end
  
        protected
        def customizations= customizations
          @customizations = customizations
          @current = customizations
        end
  
      end
  
      # @private
      class ValueFormatter
  
        def extend_format_value &block
          MetaUtils.extend_method(self, :format_value, &block)
        end
  
        def format_value value
          value
        end
  
      end
  
      # @private
      class Parser
  
        def initialize context, customizations
          @context = context
          @customizations = customizations
        end
  
        def start_element element_name, attrs
  
          if @frame
            @frame = @frame.build_child_frame(element_name)
          else
            @frame = RootFrame.new(@context, @customizations)
          end
  
          # consume attributes the same way we consume nested xml elements
          attrs.each do |(attr_name, attr_value)|
            attr_frame = @frame.build_child_frame(attr_name)
            attr_frame.add_text(attr_value)
            @frame.consume_child_frame(attr_frame)
          end
  
        end
  
        def end_element name
          @frame.close
          if @frame.parent_frame
            child_frame = @frame
            parent_frame = @frame.parent_frame
            parent_frame.consume_child_frame(child_frame)
          end
          @frame = @frame.parent_frame
        end
  
        def characters chars
          @frame.add_text(chars) if @frame
        end
  
      end
  
      module REXMLSaxParserAdapter
  
        include REXML::StreamListener
  
        def tag_start(name, attrs)
          start_element(name, attrs)
        end
  
        def tag_end(name)
          end_element(name)
        end
  
        def text(chars)
          characters(chars)
        end
  
      end
  
      # @private
      module NokogiriAdapter
  
        def xmldecl(*args); end
        def start_document; end
        def end_document; end
        def start_element_namespace(name, attrs = [], prefix = nil, uri = nil, ns = [])
          start_element(name, attrs.map { |att| [att.localname, att.value] })
        end
        def end_element_namespace(name, prefix = nil, uri = nil)
          end_element(name)
        end
        def error(*args); end
  
      end
  
      # @private
      class Frame
  
        attr_reader :parent_frame
  
        attr_reader :root_frame
  
        attr_reader :element_name
  
        attr_accessor :customizations
  
        def initialize element_name, options = {}
  
          @element_name = element_name
          @context = options[:context]
          @parent_frame = options[:parent_frame]
          @root_frame = options[:root_frame]
          @wrapper_frames = {}
  
          if @parent_frame
            @customizations = @parent_frame.customizations_for_child(element_name)
          else
            @customizations = options[:customizations]
            @root_frame ||= self
          end
  
          if @root_frame == self and
              indexes = @customizations[:index_names]
            indexes.each do |name|
              if context.kind_of?(Context)
                context.__set_data__(name, {})
              else
                add_mutators(name)
                context.send("#{name}=", {})
              end
            end
          end
  
          # we build and discard child frames here so we can know
          # which children should always add a method to this
          # frame's context (forced elements, like collected arrays)
          @customizations[:children].keys.each do |child_element_name|
            consume_initial_frame(build_child_frame(child_element_name))
          end
  
          if @customizations[:wrapper_frames]
            @customizations[:wrapper_frames].keys.each do |method_name|
              consume_initial_frame(wrapper_frame_for(method_name))
            end
          end
  
        end
  
        def build_child_frame(child_element_name)
          Frame.new(child_element_name,
                    :parent_frame => self,
                    :root_frame => root_frame)
        end
  
        def consume_child_frame child_frame
  
          return if child_frame.ignored?
  
          if child_frame.wrapped?
            child_frame.wrapper_methods.each do |method_name|
              consume_in_wrapper(method_name, child_frame)
            end
          else
            # forced child frames have already added mutators to this context
            add_mutators_for(child_frame) unless child_frame.forced?
  
            if child_frame.collected?
              child_frame.add_to_collection(context.send(child_frame.getter),
                                            child_frame.value)
            else
              invoke_setter(child_frame, child_frame.value)
            end
          end
  
        end
  
        def close
          if indexed = @customizations[:indexed]
            (name, block) = indexed
            key = block.call(context)
            [key].flatten.each do |k|
              index(name)[k] = context
            end
          end
        end
  
        def add_text text
          @text ||= ''
          @text << text
        end
  
        def value
          @customizations[:value_formatter] ?
            @customizations[:value_formatter].format_value(default_value) :
            default_value
        end
  
        def context
          @context ||= (self.ignored? ? parent_frame.context : construct_context)
        end
  
        def setter
          @customizations[:setter]
        end
  
        def getter
          @customizations[:getter]
        end
  
        def initial_collection
          @customizations[:initial_collection].call
        end
  
        def add_to_collection(collection, value)
          @customizations[:add_to_collection].call(collection, value)
        end
  
        def index(name)
          return root_frame.index(name) unless root_frame == self
          context.send(name)
        end
  
        protected
        def consume_initial_frame(child_frame)
          if child_frame.forced?
            add_mutators_for(child_frame)
            if child_frame.collected?
              invoke_setter(child_frame, child_frame.initial_collection)
            else
              # this allows nested forced elements to appear
              invoke_setter(child_frame, child_frame.value)
            end
          end
        end
  
        protected
        def construct_context
          if @customizations[:construct_value]
            instance_eval(&@customizations[:construct_value])
          else
            Context.new
          end
        end
  
        protected
        def consume_in_wrapper method_name, child_frame
          wrapper_frame = wrapper_frame_for(method_name)
          add_mutators(method_name)
  
          # the wrapper consumes the unwrapped child
          customizations = child_frame.customizations.merge(:wrapper => nil)
          child_frame = child_frame.dup
          child_frame.customizations = customizations
  
          wrapper_frame.consume_child_frame(child_frame)
          consume_child_frame(wrapper_frame)
        end
  
        protected
        def wrapper_frame_for(method_name)
          @wrapper_frames[method_name] ||=
              Frame.new(method_name.to_s,
                        :customizations => wrapper_customizations(method_name))
        end
  
        protected
        def wrapper_customizations(method_name)
          customizations = CustomizationContext.new(method_name)
          customizations[:children] = @customizations[:children]
          if wrapper_frames = @customizations[:wrapper_frames] and
              additional = wrapper_frames[method_name]
            additional[:children] = @customizations[:children].merge(additional[:children]) if
              additional[:children]
            customizations.merge!(additional)
          end
          customizations
        end
  
        protected
        def invoke_setter(child_frame, value)
          if context.kind_of?(Context)
            context.__set_data__(child_frame.getter, value)
          else
            context.send(child_frame.setter, value)
          end
        end
  
        protected
        def add_mutators_for child_frame
          return if context.kind_of?(Context)
          add_mutators(child_frame.ruby_name,
                       child_frame.setter,
                       child_frame.getter)
        end
  
        protected
        def add_mutators(variable_name,
                         setter = nil,
                         getter = nil)
          return if context.kind_of?(Context)
          variable_name = variable_name.to_s.gsub(/\?$/, '')
          setter ||= "#{variable_name}="
          getter ||= variable_name
          return if context.respond_to?(getter) && context.respond_to?(setter)
          MetaUtils.extend_method(context, setter) do |val|
            instance_variable_set("@#{variable_name}", val)
          end
          MetaUtils.extend_method(context, getter) do
            instance_variable_get("@#{variable_name}")
          end
        end
  
        protected
        def forced?
          @customizations[:forced]
        end
  
        protected
        def ignored?
          @customizations[:ignored]
        end
  
        protected
        def collected?
          @customizations[:collected]
        end
  
        protected
        def wrapped?
          @customizations[:wrapper]
        end
  
        protected
        def wrapper_methods
          @customizations[:wrapper]
        end
  
        protected
        def default_value
          if
            # TODO : move this out of the default value method
            @context and
            @context.respond_to?(:encoding) and
            @context.encoding == 'base64'
          then
            Base64.decode64(@text.strip)
          else
            @context || @text
          end
        end
  
        protected
        def ruby_name
          Inflection.ruby_name(@customizations[:renamed] || element_name)
        end
  
        protected
        def customizations_for_child child_element_name
          @customizations[:children][child_element_name] ||
            CustomizationContext.new(child_element_name)
        end
  
        protected
        def initial_customizations(element_name = nil)
        end
  
      end
  
      # @private
      class RootFrame < Frame
  
        def initialize context, customizations
          super('ROOT', :context => context, :customizations => customizations)
        end
  
      end
  
      # @private
      class StubResponse
  
        def initialize customizations, context = nil
          @customizations = customizations
          stub_methods(customizations, context || self)
        end
  
        def inspect
          methods = public_methods - Object.public_methods
          "<Stub #{methods.collect{|m| ":#{m}" }.sort.join(', ')}>" 
        end
  
        # @private
        private
        def stub_methods customizations, context
          add_wrappers_to_context(customizations, context)
          add_child_elements_to_context(customizations, context)
          add_indexes_to_context(customizations, context)
        end
  
        # @private
        private
        def add_wrappers_to_context customizations, context
          wrappers(customizations) do |wrapper_name,wrapper_customizations|
            MetaUtils.extend_method(context, wrapper_name) do
              StubResponse.new(wrapper_customizations)
            end
          end
        end
  
        # @private
        private
        def add_child_elements_to_context customizations, context
          without_wrapper(customizations) do |child_name,child_rules|
  
            ruby_name = Inflection.ruby_name(child_rules[:renamed] || child_name)
  
            # we stop at any collected elements
            if child_rules[:collected]
              MetaUtils.extend_method(context, ruby_name) { [] }
              next
            end
  
            if child_rules[:construct_value] 
              
              MetaUtils.extend_method(context, ruby_name) do
                child_rules[:construct_value].call
              end
  
            elsif child_rules[:children].empty? # has no child elements
  
              unless child_rules[:ignored]
  
                method_name = child_rules[:boolean] ? "#{ruby_name}?" : ruby_name
                
                MetaUtils.extend_method(context, method_name) do
                  if child_rules[:value_formatter]
                    child_rules[:value_formatter].format_value('')
                  else
                    nil
                  end
                end
              end
  
            else # it has one or more child elements
  
              if child_rules[:ignored]
                stub_methods(child_rules, context)
              else
                MetaUtils.extend_method(context, ruby_name) do
                  StubResponse.new(child_rules)
                end
              end
  
            end
  
          end
        end
  
        # @private
        def add_indexes_to_context(customizations, context)
          if indexes = customizations[:index_names]
            indexes.each do |index|
              MetaUtils.extend_method(context, index) { {} }
            end
          end
        end
  
        # @private
        def wrappers customizations, &block
          wrappers = {}
          customizations[:children].each_pair do |child_name,child_rules|
            if child_rules[:wrapper]
              wrapper_name = child_rules[:wrapper].first
              wrappers[wrapper_name] ||= { :children => {} }
              wrappers[wrapper_name][:children][child_name] = child_rules.merge(:wrapper => nil)
            end
          end
  
          wrappers.each_pair do |wrapper_name, wrapper_customizations|
            yield(wrapper_name, wrapper_customizations)
          end
        end
  
        # @private
        private
        def without_wrapper customizations, &block
          customizations[:children].each_pair do |child_name,child_rules|
            unless child_rules[:wrapper]
              yield(child_name, child_rules)
            end
          end
        end
  
      end
  
    end
  end
end
