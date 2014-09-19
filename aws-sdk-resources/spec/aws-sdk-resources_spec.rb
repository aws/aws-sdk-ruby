require 'spec_helper'

describe 'aws-sdk-resources gem' do
  Aws::SERVICE_MODULE_NAMES.each do |svc|

    it "defines a resource class for Aws::#{svc}" do
      resource_class = Aws.const_get(svc).const_get(:Resource)
      expect(resource_class.ancestors).to include(Aws::Resource::Base)
    end

  end
end
