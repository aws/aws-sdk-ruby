# frozen_string_literal: true

require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Support H2 Async' do

    before(:all) do
      SpecHelper.generate_service(['Async'], multiple_files: false)
    end

      let(:output_stream) {
        [
          { message_type: 'event', event_type: :baz_result, result: { details: [ "foo" ]}}
        ].each
      }

      let(:client) {
        Async::AsyncClient.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('akid', 'secret'),
          stub_responses: {foo: {
            member_b: "member_b_header",
            baz_stream: output_stream
          }}
        )
      }

      it 'supports same eventstream shape at input and output' do
        input = Async::EventStreams::InputBazStream.new
        output = Async::EventStreams::OutputBazStream.new
        same_client = Async::AsyncClient.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('akid', 'secret'),
          stub_responses: {baz: {
            stream: [
              { message_type: 'event', event_type: :baz_result, result: { details: [ "foo" ]}}
            ].each
          }}
        )
        output.on_baz_result_event do |e|
          expect(e.result.to_hash).to eq({ details: [ "foo" ]})
        end
        same_client.baz(input_event_stream_handler: input,
          output_event_stream_handler: output)
        input.signal_baz_result_event(result: {details: ["baz"]})
        input.signal_end_stream

        sent_event = same_client.send_events[0]
        expect(sent_event.headers[":event-type"].value).to eq('BazResult')
        expect(sent_event.payload.read).to eq("{\"Details\":[\"baz\"]}")
      end

      it 'allows disable event validation' do
        input_stream = Async::EventStreams::FooStream.new
        no_validate_client = Async::AsyncClient.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('akid', 'secret'),
          validate_params: false,
          stub_responses: {foo: {
            member_b: "member_b_header",
            baz_stream: output_stream
          }}
        )

        expect {
          async_resp = no_validate_client.foo(member_a: "hello", input_event_stream_handler: input_stream)
          input_stream.signal_bar_event(bar_wrong_chunk: "chunk0")
          input_stream.signal_end_stream
          async_resp.join!
        }.to_not raise_error
      end

      it 'supports signal events using eventstream object' do
        input_stream = Async::EventStreams::FooStream.new
        output_stream = Async::EventStreams::BazStream.new
        output_stream.on_baz_result_event do |e|
          expect(e.event_type).to eq(:baz_result)
          expect(e.result.details).to eq(['foo'])
        end

        client.foo(member_a: "hello", input_event_stream_handler: input_stream,
          output_event_stream_handler: output_stream)
        input_stream.signal_bar_event(bar_chunk: "chunk0")
        input_stream.signal_bar_event(bar_chunk: "chunk1")
        input_stream.signal_end_stream

        client.send_events.each_with_index do |event, i|
          expect(event.headers[":event-type"].value).to eq('Bar')
          expect(event.payload.read).to eq("chunk#{i}")
        end
      end

      it 'supports signal events after connection established' do
        input_stream = Async::EventStreams::FooStream.new
        output_stream = Async::EventStreams::BazStream.new
        output_stream.on_baz_result_event do |e|
          expect(e.event_type).to eq(:baz_result)
          expect(e.result.details).to eq(['foo'])
        end

        async_resp = client.foo(member_a: "hello", input_event_stream_handler: input_stream,
          output_event_stream_handler: output_stream)
        input_stream.signal_bar_event(bar_chunk: "chunk")
        input_stream.signal_end_stream

        sleep(3)
        async_resp.join!
        expect(client.send_events.size).to eq(1)
        expect(client.send_events.first.headers[":event-type"].value).to eq('Bar')
        expect(client.send_events.first.payload.read).to eq('chunk')
      end

      it 'raise error when signal events before making async request' do
        input_stream = Async::EventStreams::FooStream.new

        expect {
          input_stream.signal_bar_event(bar_chunk: "chunk0")
        }.to raise_error(Aws::Errors::SignalEventError)

        client.foo(member_a: "hello", input_event_stream_handler: input_stream)

        expect {
          input_stream.signal_bar_event(bar_chunk: "chunk1")
          input_stream.signal_end_stream
        }.to_not raise_error
      end

      it 'handles unknown events' do
        input = Async::EventStreams::InputBazStream.new
        output = Async::EventStreams::OutputBazStream.new
        data = { details: [ "unknown" ] }
        same_client = Async::AsyncClient.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('akid', 'secret'),
          stub_responses: {baz: {
            stream: [
              { message_type: 'event', event_type: :test_unknown_event, result: data }
            ].each
          }}
        )
        output.on_unknown_event do |e|
          expect(e.event_type).to eq :unknown_event
          expect(e.raw_event_type).to eq 'test_unknown_event'
          expect(JSON.parse(e.raw_event.payload.read, symbolize_names: true)[:result].to_h).to eq(data)
        end

        same_client.baz(input_event_stream_handler: input,
          output_event_stream_handler: output)
        input.signal_end_stream
      end

      it 'raises error when initializing AsyncClient' do
        expected_msg = "Must include http/2 gem to use AsyncClient instances."
        allow(Kernel).to receive(:const_defined?)
          .with('HTTP2').and_return(false)
        expect {
          Async::AsyncClient.new
        }.to raise_error(RuntimeError, expected_msg)
      end

    end
  end
