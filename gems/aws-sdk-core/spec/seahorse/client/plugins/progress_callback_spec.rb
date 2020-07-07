# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module  Client
    module Plugins
      describe ProgressCallback do

        let(:client_class) do
          api = Model::Api.new
          api.add_operation(:operation_name, Model::Operation.new)
          client_class = Class.new(Client::Base)
          client_class.set_api(api)
          client_class
        end

        let(:callback) { Proc.new {|read, total| puts "#{read} / #{total}"} }

        it 'adds a #progress_callback option to config' do
          client = client_class.new(progress_callback: callback, endpoint:'http://foo.com')
          expect(client.config.progress_callback).to eq(callback)
        end
      end
    end
  end
end
