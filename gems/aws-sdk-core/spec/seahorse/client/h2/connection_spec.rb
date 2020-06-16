# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module H2
      describe Connection do
        if RUBY_VERSION >= '2.1' && !ENV['NO_H2']
          let(:conn) { Connection.new }

          describe '#new_stream' do

            it 'returns a new HTTP2 stream' do
              expect(conn.new_stream).to be_kind_of(HTTP2::Stream)
            end

          end
        end

      end
    end
  end
end
