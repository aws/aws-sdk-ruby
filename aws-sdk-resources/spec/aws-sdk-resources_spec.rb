require 'spec_helper'

describe 'aws-sdk-resources gem' do
  Aws::SERVICE_MODULE_NAMES.each do |svc|

    it "defines a resource class for Aws::#{svc}" do
      resource_class = Aws.const_get(svc).const_get(:Resource)
      expect(resource_class.ancestors).to include(Aws::Resource::Base)
    end

  end

  describe 'add_service' do

    it 'accepts paths to definition documents' do
      Aws.add_service(:WithPath, resources: fixture_path('definitions', 'empty.json'))
      expect(Aws::WithPath.constants).to include(:Resource)
    end

    it 'accepts definition hashes' do
      Aws.add_service(:WithHash, resources: {})
      expect(Aws::WithHash.constants).to include(:Resource)
    end

    it 'accepts definition objects' do
      Aws.add_service(:WithObj, resources: Aws::Resource::Definition.new)
      expect(Aws::WithObj.constants).to include(:Resource)
    end

    it 'works when a definition is not defined' do
      Aws.add_service(:WithNil)
      expect(Aws::WithNil.constants).to include(:Resource)
    end

    it 'raises and error when definition is not one of the above' do
      expect {
        Aws.add_service(:WithNil, resources:Object.new)
      }.to raise_error(ArgumentError, /invalid resource definition/)
    end

  end
end
