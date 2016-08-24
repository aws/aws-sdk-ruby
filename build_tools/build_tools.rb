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
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
  WARNING_TXT

  GENERATED_SRC_FIRST_LINE = GENERATED_SRC_WARNING.lines.first

end
