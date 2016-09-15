module Aws
  class EmptyStructure < Struct.new('AwsEmptyStructure')
    include(Aws::Structure)
  end
end
