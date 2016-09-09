$LOAD_PATH.unshift(File.expand_path('../aws-sdk-code-generator/lib', __FILE__))

require 'aws-sdk-code-generator'

require_relative 'builder'
require_relative 'customizations'
require_relative 'file_writer'
require_relative 'replace_lines'
require_relative 'services'
require_relative 'wrap_list'

# @api private
module BuildTools

  GENERATED_SRC_WARNING = <<-WARNING_TXT
# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
  WARNING_TXT

  GENERATED_SRC_FIRST_LINE = GENERATED_SRC_WARNING.lines.first

end
