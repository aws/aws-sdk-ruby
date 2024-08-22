# frozen_string_literal: true

require_relative '../../spec_helper'
require 'opentelemetry-sdk'

module Aws
  module Telemetry
    describe OTelProvider do
      before do
        allow(Aws::Telemetry)
          .to receive(:otel_loaded?)
          .and_return(true)
      end

      let(:otel_provider) { OTelProvider.new }
      let(:context_manager) { otel_provider.context_manager }
      let(:tracer_provider) { otel_provider.tracer_provider }
      let(:tracer) { tracer_provider.tracer('some_tracer') }

      describe '#initialize' do
        it 'raises ArgumentError when otel dependency fails to load' do
          allow_any_instance_of(Aws::Telemetry::OTelProvider)
            .to receive(:otel_loaded?).and_return(false)
          expect { otel_provider }.to raise_error(ArgumentError)
        end

        it 'sets up tracer provider and context manager' do
          expect(tracer_provider).to be_a(Aws::Telemetry::OTelTracerProvider)
          expect(context_manager).to be_a(Aws::Telemetry::OTelContextManager)
        end
      end

      describe OTelContextManager do
        before { OpenTelemetry::Context.clear }
        let(:root_context) { OpenTelemetry::Context::ROOT }
        let(:new_context) do
          OpenTelemetry::Context.empty.set_value('new', 'context')
        end

        describe '#current' do
          it 'returns the current context' do
            expect(context_manager.current).to eq(root_context)
          end
        end

        describe '#current_span' do
          it 'returns the current span' do
            wrapper_span = tracer.start_span('foo')
            expect(context_manager.current_span.instance_variable_get(:@span))
              .to eq(wrapper_span.instance_variable_get(:@span))
          end
        end

        describe '#attach' do
          it 'sets the current context' do
            context_manager.attach(new_context)
            expect(context_manager.current).to eq(new_context)
          end
        end

        describe '#detach' do
          it 'detaches the previously set context' do
            token = context_manager.attach(new_context)
            expect(context_manager.current).to eq(new_context)
            context_manager.detach(token)
            expect(context_manager.current).to eq(root_context)
          end
        end
      end

      describe 'OTelTracerProvider' do
        it 'returns a tracer instance' do
          expect(tracer).to be_a(Aws::Telemetry::OTelTracer)
        end

        context 'tracer' do
          let(:otel_export) { OpenTelemetry::SDK::Trace::Export }
          let(:otel_exporter) { otel_export::InMemorySpanExporter.new }
          before do
            processor = otel_export::SimpleSpanProcessor.new(otel_exporter)
            OpenTelemetry::SDK.configure do |c|
              c.add_span_processor(processor)
            end
          end
          after { SpecHelper.reset_opentelemetry_sdk }

          let(:finished_span) { otel_exporter.finished_spans[0] }

          describe '#start_span' do
            it 'returns a valid span with supplied parameters' do
              span = tracer.start_span('some_span')
              span.set_attribute('apple', 'pie')
              span.add_event('pizza party')
              span.status = Aws::Telemetry::SpanStatus.ok
              span.finish
              expect(finished_span.name).to eq('some_span')
              expect(finished_span.attributes).to include('apple' => 'pie')
              expect(finished_span.events[0].name).to eq('pizza party')
              expect(finished_span.status)
                .to be_an_instance_of(Aws::Telemetry::SpanStatus)
            end
          end

          describe '#in_span' do
            let(:error) { StandardError.new('foo') }

            it 'returns a valid span with supplied parameters' do
              tracer.in_span('foo') do |span|
                span['meat'] = 'pie'
                span.add_attributes('durian' => 'pie')
                span.status = Aws::Telemetry::SpanStatus.error
                span.record_exception(error, attributes: { 'burnt' => 'pie' })
              end
              expect(finished_span.name).to eq('foo')
              expect(finished_span.attributes)
                .to include('meat' => 'pie', 'durian' => 'pie')
              expect(finished_span.status.code).to eq(2)
              expect(finished_span.events.size).to eq(1)
              expect(finished_span.events[0].name).to eq('exception')
              expect(finished_span.events[0].attributes['exception.type'])
                .to eq(error.class.to_s)
              expect(finished_span.events[0].attributes['exception.message'])
                .to eq(error.message)
              expect(finished_span.events[0].attributes['burnt']).to eq('pie')
            end
          end
        end
      end
    end
  end
end
