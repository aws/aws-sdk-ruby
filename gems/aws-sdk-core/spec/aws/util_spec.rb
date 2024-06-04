# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Util do
    describe '.deserialize_time' do
      let(:time) { Time.at(946_845_296.123) }

      it 'correctly parses when given value is nil' do
        expect(Util.deserialize_time(nil)).to be_nil
      end

      it 'correctly parses when given value is a numeric string' do
        value = time.to_f.to_s
        expect(Util.deserialize_time(value)).to eq(time.utc)
      end

      it 'correctly parses when given value is a string' do
        value = time.strftime '%Y-%m-%d %H:%M:%S.%N %z' # preserves frac secs
        expect(Util.deserialize_time(value)).to eq(time.utc)
      end
    end
  end
end
