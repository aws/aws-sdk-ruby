# frozen_string_literal: true

Before("@transcribestreamingservice") do
  @service = Aws::TranscribeStreamingService::Resource.new
  @client = @service.client
  @async_client = Aws::TranscribeStreamingService::AsyncClient.new(
    ssl_verify_peer: false,
  )
  @tracker = []
  @output_stream = Aws::TranscribeStreamingService::EventStreams::TranscriptResultStream.new
  @output_stream.on_event do |event|
    @tracker << event
  end
end

After("@transcribestreamingservice") do
  # shared cleanup logic
end

When(/^I have an audio file$/) do
  path = File.expand_path(File.join(File.dirname(__FILE__), 'slience.wav'))
  @file = File.new(path, 'rb')
end

When(/^I make start_stream_transcription async call$/) do
  @input_stream = Aws::TranscribeStreamingService::EventStreams::AudioStream.new
  @async_resp = @async_client.start_stream_transcription(
    language_code: 'en-US',
    media_encoding: 'pcm',
    media_sample_rate_hertz: 16000,
    input_event_stream_handler: @input_stream,
    output_event_stream_handler: @output_stream,
  )
end

When(/^I signal events at audio stream$/) do
  while !@file.eof?
    @input_stream.signal_audio_event_event(audio_chunk: @file.read(2000))
  end
  @input_stream.signal_end_stream
  @file.close
end

Then(/^I call async response wait$/) do
  @sync_resp = @async_resp.wait
end

Then(/^sync response is returned$/) do
  expect(@tracker).to match_array(@sync_resp.transcript_result_stream.to_a)
  @tracker = []
end

When(/^I call async response join!$/) do
  sleep(3)
  @sync_resp = @async_resp.join!
end
