require_relative '../../spec_helper'

describe 'Interface:' do
  describe 'Client' do
    describe 'Configuration' do

      # TODO : move tests from spec/aws/plugins/region_endpoint_spec.rb

      describe ':region' do

        it 'raises ArgumentError for a missing region'

        it 'accepts region from ENV["AWS_REGION"]'

      end

      describe ':endpoint' do

        it 'overrides the default regional endpoint'

      end
    end
  end
end
