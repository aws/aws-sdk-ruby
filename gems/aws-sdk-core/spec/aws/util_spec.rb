# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Util do
    describe '.serialize_epoch_seconds' do
      it 'returns an Integer for whole-second values' do
        result = Util.serialize_epoch_seconds(Time.at(123_456_789))
        expect(result).to eql(123_456_789)
      end

      it 'preserves millisecond precision for sub-second values' do
        result = Util.serialize_epoch_seconds(Time.at(1_700_000_000, 123_000))
        expect(result).to eq(1_700_000_000.123)
      end

      it 'truncates precision finer than milliseconds' do
        result = Util.serialize_epoch_seconds(Time.at(1_700_000_000, 123_456))
        expect(result).to eq(1_700_000_000.123)
      end
    end

    describe '.serialize_date_time' do
      it 'omits fractional seconds for whole-second values' do
        result = Util.serialize_date_time(Time.at(1_700_000_000))
        expect(result).to eq('2023-11-14T22:13:20Z')
      end

      it 'includes millisecond precision for sub-second values' do
        result = Util.serialize_date_time(Time.at(1_700_000_000, 123_000))
        expect(result).to eq('2023-11-14T22:13:20.123Z')
      end

      it 'truncates precision finer than milliseconds' do
        result = Util.serialize_date_time(Time.at(1_700_000_000, 123_456))
        expect(result).to eq('2023-11-14T22:13:20.123Z')
      end
    end

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
