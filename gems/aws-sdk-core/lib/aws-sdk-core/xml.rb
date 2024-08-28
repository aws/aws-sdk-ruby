# frozen_string_literal: true

module Aws
  module Xml
    autoload :Builder, 'aws-sdk-core/xml/builder'
    autoload :DefaultList, 'aws-sdk-core/xml/default_list'
    autoload :DefaultMap, 'aws-sdk-core/xml/default_map'
    autoload :DocBuilder, 'aws-sdk-core/xml/doc_builder'
    autoload :ErrorHandler, 'aws-sdk-core/xml/error_handler'
    autoload :Parser, 'aws-sdk-core/xml/parser'

    class Parser
      autoload :Stack, 'aws-sdk-core/xml/parser/stack'
      autoload :Frame, 'aws-sdk-core/xml/parser/frame'
      autoload :ParsingError, 'aws-sdk-core/xml/parser/parsing_error'
    end
  end
end
