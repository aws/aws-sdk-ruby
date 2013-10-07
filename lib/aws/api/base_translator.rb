module Aws
  module Api
    class BaseTranslator

      include Util

      DEFAULT_OPTIONS = {
        documentation: true,
        errors: true,
        timestamp_format: 'iso8601',
      }

      def initialize(src, options)
        @properties = {}
        @options = options
        DEFAULT_OPTIONS.each do |option, default|
          @options[option] = default unless @options.key?(option)
        end
        src.each_pair do |property, value|
          self.send("set_#{property}", value)
        end
      end

      def set_timestamp_format(format)
        @options = @options.merge(timestamp_format: format.sub(/Timestamp/, ''))
      end

      def set_documentation(docs)
        if docs && @options[:documentation]
          docs = docs.gsub(/<!--.*?-->/m, '')
          docs = docs.gsub(/<a>(.+?)<\/a>/m, '\1')
          docs = docs.gsub(/<examples?>.+?<\/examples?>/m, '')
          docs = docs.gsub(/<\/?note>/m, '')
          docs = docs.gsub(/\{(\S+)\}/, '`{\1}`')
          docs = docs.gsub(/\s+/, ' ').strip
          @properties['documentation'] = docs unless docs.empty?
        end
      end

      def translated
        raise NotImplementedError
      end

      class << self

        def translate(src, options)
          new(src, options).translated if src
        end

        def property(name, options = {})
          method_name = "set_#{options[:from] || name}"
          define_method(method_name) do |value|
            @properties[name.to_s] = value
          end
        end

        def metadata(name, options = {})
          define_method("set_#{name}") do |value|
            @properties['metadata'] ||= {}
            @properties['metadata'][options[:as] || name.to_s] = value
          end
        end

        def ignore(property)
          define_method("set_#{property}") { |value| }
        end

      end

    end
  end
end
