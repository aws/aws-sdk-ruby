# frozen_string_literal: true

require_relative '../../../spec_helper'

module Aws
  module Core
    module Rest
      module Request
        describe 'timestamp serialization' do
          let(:time) { Time.at(1_700_000_000, 123_456_789, :nanosecond) }
          let(:member) do
            Smithy::Schema::Shapes::MemberShape.new(
              target: Smithy::Schema::Shapes::TimestampShape.new,
              traits: { 'smithy.api#timestampFormat' => 'epoch-seconds' }
            )
          end

          it 'preserves milliseconds in URI labels' do
            expect(Endpoint.allocate.send(:timestamp, member, time)).to eq(1_700_000_000.123)
          end

          it 'preserves milliseconds in headers' do
            expect(Headers.allocate.send(:timestamp, member, time)).to eq(1_700_000_000.123)
          end

          it 'preserves milliseconds in query strings' do
            expect(QuerystringBuilder.new.send(:timestamp, member, time)).to eq(1_700_000_000.123)
          end
        end
      end
    end
  end
end
