require 'mustache'

module AwsSdkCodeGenerator
  class View < Mustache

    TEMPLATE_DIR = File.expand_path('../../../templates', __FILE__)

    def self.inherited(subclass)
      parts = subclass.name.split('::')
      parts.shift #=> remove AwsSdkCodeGenerator
      parts.shift #=> remove Views
      path = parts.map { |part| Underscore.underscore(part) }.join('/')
      subclass.template_path = TEMPLATE_DIR
      subclass.template_file = "#{TEMPLATE_DIR}/#{path}.mustache"
      subclass.raise_on_context_miss = true
    end

  end
end
