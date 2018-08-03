require_relative '../../spec_helper'

module Aws
  module Plugins
    describe EndpointDiscovery do

      it 'does nothing when :endpoint is specified' do
      end

      it 'fetches endpoint from cache when available' do
      end

      it 'caches endpoint when request endpoint succeed' do
      end

      it 'makes requests to fetch endpoints when required' do
      end

      it 'fails when fetching endpoint failed but required' do
      end

      it 'makes requests to fetch endpoints when enabled but not required' do
      end

      it 'does not fail when fetching endpoint failed when enabled but not required' do
      end

      it 'does nothing when disabled and not required' do
      end

      it 'async makes requests to fetch endpoint when enabled but not required and :active_endpoint_cache is enabled' do
      end

      it 'can enable :endpoint_cache_auto_refresh' do
      end

      it 'can set endpoint cache max entries limit' do
      end

      it 'formats cache key correctly without identifiers' do
      end

      it 'formats cache key correctly with identifiers' do
      end

    end
  end
end
