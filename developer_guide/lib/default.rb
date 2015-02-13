# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc::Helpers::LinkTo

# Changes the fenced code blocks from:
#
#     ```ruby
#     # code here
#     ```
#
# To
#
#     ```language-ruby
#     # code here
#     ```
#
# This format is required by code-ray, but we want the files on disk to
# use GitHub style fenced code-blocks
class CodeLanguageFilter < Nanoc::Filter
  identifier :code_language
  type :text
  def run(content, params = {})
    content.gsub(/```(.+)/, '```language-\1')
  end
end

module Sections

  def sections
    @sections ||= items.inject({}) do |items, item|
      items[item[:section]] = item if item[:section]
      items
    end
  end

  def section_link(name)
    if item = sections[name]
      link_to(item[:title], item.identifier[9..-1])
    else
      raise ArgumentError, "unknown section #{name.inspect}"
    end
  end

end

include Sections
