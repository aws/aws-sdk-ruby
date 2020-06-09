require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Support Query APIs' do
    before(:all) do
      SpecHelper.generate_service(['SampleQuery'], multiple_files: false)
    end

    let(:client) {
      SampleQuery::Client.new(
        region: "us-west-2",
        stub_responses: true
      )
    }

    it 'properly parses an empty response' do
      client.stub_responses(:empty_response,
        {
          status_code: 200,
          headers: {},
          body: "<DeleteStackResponse xmlns=\"http://cloudformation.amazonaws.com/doc/2010-05-15/\">\n  <ResponseMetadata>\n    <RequestId>foo-bar-baz</RequestId>\n  </ResponseMetadata>\n</DeleteStackResponse>\n"
        }
      )
      resp = client.empty_response
      expect(resp.data.class).to eq(Aws::EmptyStructure)
      expect(resp.to_h).to eq({})
    end
  end
end
