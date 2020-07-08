# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module  Client
    module Plugins
      describe ProgressCallback do

        let(:client_class) do
          api = Model::Api.new
          api.add_operation(:operation, Model::Operation.new)
          client_class = Class.new(Client::Base)
          client_class.set_api(api)
          client_class
        end

        let(:callback) { Proc.new {|read, total| @call_count += 1 } }
        let(:client) { client_class.new(progress_callback: callback, endpoint: 'http://foo.com') }

        before { @call_count = 0 }

        it 'adds a #progress_callback option to config' do
          expect(client.config.progress_callback).to eq(callback)
        end

        it 'is called once on an empty request body' do
          stub_request(:get, 'http://foo.com')
            .to_return(status: 200, body: '')

          client.operation
          expect(@call_count).to eq(1)
        end
      end
    end
  end
end
