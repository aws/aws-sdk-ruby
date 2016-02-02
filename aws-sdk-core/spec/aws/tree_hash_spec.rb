require 'spec_helper'
module Aws
  describe TreeHash do

    it 'should throw exception when digest is called without any updates' do
      th = TreeHash.new
      expect {
        th.digest
      }.to raise_error(RuntimeError, "TreeHash Digest cannot be computed without any hashes")

      th.update ''
       expect {
        th.digest
      }.to_not raise_error(RuntimeError, "TreeHash Digest cannot be computed without any hashes")

    end

  end
end