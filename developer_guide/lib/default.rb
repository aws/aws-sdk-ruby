# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc::Helpers::LinkTo

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
