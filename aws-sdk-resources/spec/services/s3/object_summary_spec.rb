require 'spec_helper'

module Aws
  module S3
    describe ObjectSummary do

      it 'responds to the same methods as Aws::S3::Object' do
        diff = S3::Object.instance_methods - S3::ObjectSummary.instance_methods
        diff -= S3::Object.data_attributes
        expect(diff).to eq([])
      end

    end
  end
end
