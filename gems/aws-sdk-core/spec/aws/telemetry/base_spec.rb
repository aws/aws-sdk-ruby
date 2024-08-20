# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Telemetry
    describe TracerProviderBase do
      it 'defines the interface' do
        expect do
          subject.tracer
        end.to raise_error(NotImplementedError)
      end
    end

    describe TracerBase do
      it 'defines the interface' do
        expect do
          subject.start_span('foo')
        end.to raise_error(NotImplementedError)

        expect do
          subject.in_span('foo')
        end.to raise_error(NotImplementedError)
      end
    end

    describe SpanBase do
      it 'defines the interface' do
        expect do
          subject.set_attribute('foo', 'bar')
        end.to raise_error(NotImplementedError)

        expect do
          subject.add_attributes('foo' => 'bar')
        end.to raise_error(NotImplementedError)

        expect do
          subject.add_event('foo')
        end.to raise_error(NotImplementedError)

        expect do
          subject.status = Aws::Telemetry::SpanStatus.error
        end.to raise_error(NotImplementedError)

        expect do
          subject.finish
        end.to raise_error(NotImplementedError)

        expect do
          subject.record_exception(StandardError.new)
        end.to raise_error(NotImplementedError)
      end
    end

    describe ContextManagerBase do
      it 'defines the interface' do
        expect do
          subject.current
        end.to raise_error(NotImplementedError)

        expect do
          subject.current_span
        end.to raise_error(NotImplementedError)

        expect do
          subject.attach('foo')
        end.to raise_error(NotImplementedError)

        expect do
          subject.detach('foo')
        end.to raise_error(NotImplementedError)
      end
    end
  end
end
