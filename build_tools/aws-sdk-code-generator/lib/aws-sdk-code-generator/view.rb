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

    # @param (see Underscore.underscore)
    # @option (see Underscore.underscore)
    # @return (see Underscore.underscore)
    def underscore(string)
      Underscore.underscore(string)
    end

    # @param (see Underscore.underscore_jmespath)
    # @option (see Underscore.underscore_jmespath)
    # @return (see Underscore.underscore_jmespath)
    def underscore_jmespath(string)
      Underscore.underscore_jmespath(string)
    end

    # @param (see Docstring.html_to_markdown)
    # @option (see Docstring.html_to_markdown)
    # @return (see Docstring.html_to_markdown)
    def html_to_markdown(html, options = {})
      Docstring.html_to_markdown(html, options)
    end

    # @param (see Docstring.block_comment)
    # @option (see Docstring.block_comment)
    # @return (see Docstring.block_comment)
    def block_comment(text, options = {})
      Docstring.block_comment(text, options = {})
    end

    # @param (see Docstring.join_docstrings)
    # @option (see Docstring.join_docstrings)
    # @return (see Docstring.join_docstrings)
    def join_docstrings(docs, options = {})
      Docstring.join_docstrings(docs, options)
    end

  end
end
