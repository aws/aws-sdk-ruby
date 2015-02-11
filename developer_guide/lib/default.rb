# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc::Helpers::LinkTo

module SectionsHelper

  def sections
    @site.items
  end

end

include SectionsHelper
