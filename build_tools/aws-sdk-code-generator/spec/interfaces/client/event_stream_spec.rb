require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Support Event Streaming Operations' do

    before(:all) do
      SpecHelper.generate_service(['Events'], multiple_files: false)
    end

    let(:stream) {
      [
        { event_type: :a, member_a: 'foo', member_b: StringIO.new('bar') },
        { event_type: :b, member_c: StringIO.new('baz') }
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
      resp = client.foo(event_stream_handler: handler)

      expect(tracker[:a].member_a).to eq('foo')
      expect(tracker[:a].member_b.read).to eq('bar')
      expect(tracker[:b].member_c.read).to eq('baz')
      expect(resp.payload).to be_a(Enumerator)
    end

    it 'support Proc object for `event_stream_handler` option' do
      tracker = {}
      handler = Proc.new do |stream|
        stream.on_a_event {|e| tracker[:a] = e}
        stream.on_b_event {|e| tracker[:b] = e}
      end
      resp = client.foo(event_stream_handler: handler)

      expect(tracker[:a].member_a).to eq('foo')
      expect(tracker[:a].member_b.read).to eq('bar')
      expect(tracker[:b].member_c.read).to eq('baz')
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
      expect(resp.payload).to be_a(Enumerator)
    end

    it 'supports `event_stream_handler` and block streaming at same time' do
      tracker = {later: []}
      handler = Events::EventStreams::BarPayload.new
      handler.on_a_event {|e| tracker[:a] = e}
      handler.on_b_event {|e| tracker[:b] = e}
      resp = client.foo(event_stream_handler: handler) do |stream|
        stream.on_event {|e| tracker[:later] << e}
      end

      expect(tracker[:a].member_a).to eq('foo')
      expect(tracker[:a].member_b.read).to eq('bar')
      expect(tracker[:b].member_c.read).to eq('baz')
      expect(tracker[:later].size).to eq(2)
      expect(tracker[:later].first).to eq(tracker[:a])
      expect(tracker[:later].last).to eq(tracker[:b])
      expect(resp.payload).to be_a(Enumerator)
    end

    it 'supports error event' do
      # TODO, provide mock event to above
      # and verify event are being processed
    end

  end
end
