require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Support Event Streaming Operations' do

    before(:all) do
      SpecHelper.generate_service(['Events'], multiple_files: false)
    end

    let(:stream) {
      [
        # eventheader & eventpayload(blob)
        { message_type: 'event', event_type: :a, member_a: 'foo', member_b: StringIO.new('bar') },
        # eventpayload(string)
        { message_type: 'event', event_type: :b, member_c: 'baz' },
        # eventpayload(structure)
        { message_type: 'event', event_type: :c, member_d: {struct_member_a: 'foo', struct_member_b: 'bar'} },
        # an unmodeled error event
        { message_type: 'error', error_code: 'InternalError', error_message: 'An internal server error occurred'}
      ].each
    }
    let(:client) {
      Events::Client.new(
        region: 'us-west-2',
        credentials: Aws::Credentials.new('akid', 'secret'),
        stub_responses: {foo: {
          payload: stream 
        }}
      )
    }

    it 'supports eventstream object for `event_stream_handler` option' do
      handler = Events::EventStreams::BarPayload.new
      tracker = {}
      handler.on_a_event {|e| tracker[:a] = e}
      handler.on_b_event {|e| tracker[:b] = e}
      handler.on_c_event {|e| tracker[:c] = e}
      resp = client.foo(event_stream_handler: handler)

      expect(tracker[:a].member_a).to eq('foo')
      expect(tracker[:a].member_b.read).to eq('bar')
      expect(tracker[:b].member_c.read).to eq('baz')
      expect(tracker[:c].member_d.struct_member_a).to eq('foo')
      expect(tracker[:c].member_d.struct_member_b).to eq('bar')
      expect(resp.payload).to be_a(Enumerator)
    end

    it 'support Proc object for `event_stream_handler` option' do
      tracker = {}
      handler = Proc.new do |stream|
        stream.on_a_event {|e| tracker[:a] = e}
        stream.on_b_event {|e| tracker[:b] = e}
        stream.on_c_event {|e| tracker[:c] = e}
      end
      resp = client.foo(event_stream_handler: handler)

      expect(tracker[:a].member_a).to eq('foo')
      expect(tracker[:a].member_b.read).to eq('bar')
      expect(tracker[:b].member_c.read).to eq('baz')
      expect(tracker[:c].member_d.struct_member_a).to eq('foo')
      expect(tracker[:c].member_d.struct_member_b).to eq('bar')
      expect(resp.payload).to be_a(Enumerator)
    end

    it 'supports no `event_stream_handler` option input' do
      resp = client.foo

      expect(resp.payload).to be_a(Enumerator)
      resp.payload.each do |event|
        case event.event_type
        when :a
          expect(event.member_a).to eq('foo')
          expect(event.member_b.read).to eq('bar')
        when :b
          expect(event.member_c.read).to eq('baz')
        when :c
          expect(event.member_d.struct_member_a).to eq('foo')
          expect(event.member_d.struct_member_b).to eq('bar')
        end
      end
    end

    it 'supports block streaming' do
      tracker = {}
      resp = client.foo do |stream|
        stream.on_event {|event| tracker[event.event_type] = event}
      end

      expect(tracker[:a].member_a).to eq('foo')
      expect(tracker[:a].member_b.read).to eq('bar')
      expect(tracker[:b].member_c.read).to eq('baz')
      expect(tracker[:c].member_d.struct_member_a).to eq('foo')
      expect(tracker[:c].member_d.struct_member_b).to eq('bar')
      expect(resp.payload).to be_a(Enumerator)
    end

    it 'supports `event_stream_handler` and block streaming at same time' do
      tracker = {later: []}
      handler = Events::EventStreams::BarPayload.new
      handler.on_a_event {|e| tracker[:a] = e}
      handler.on_b_event {|e| tracker[:b] = e}
      handler.on_c_event {|e| tracker[:c] = e}
      resp = client.foo(event_stream_handler: handler) do |stream|
        stream.on_event {|e| tracker[:later] << e}
      end

      expect(tracker[:a].member_a).to eq('foo')
      expect(tracker[:a].member_b.read).to eq('bar')
      expect(tracker[:b].member_c.read).to eq('baz')
      expect(tracker[:c].member_d.struct_member_a).to eq('foo')
      expect(tracker[:c].member_d.struct_member_b).to eq('bar')
      # error event is also an event
      expect(tracker[:later].size).to eq(4)
      expect(tracker[:later][0]).to eq(tracker[:a])
      expect(tracker[:later][1]).to eq(tracker[:b])
      expect(tracker[:later][2]).to eq(tracker[:c])
      expect(resp.payload).to be_a(Enumerator)
    end

    it 'supports error event' do
      error = nil
      handler = Events::EventStreams::BarPayload.new
      handler.on_error_event do |e| 
        error = e
        raise e
      end
      expect {
        client.foo(event_stream_handler: handler)
      }.to raise_error(Aws::Errors::EventError)
      expect(error.error_code).to eq('InternalError')
      expect(error.error_message).to eq('An internal server error occurred')
    end

  end
end
