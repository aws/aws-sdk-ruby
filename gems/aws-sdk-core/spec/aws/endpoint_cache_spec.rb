# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe EndpointCache, :jruby_flaky do
    it 'allows configure max entries limit' do
      cache = Aws::EndpointCache.new(max_entries: 3)
      expect(cache.max_entries).to eq(3)
    end

    it 'deletes old entry when new entry is added for the same key' do
      cache = Aws::EndpointCache.new(max_entries: 3)
      cache['A'] = { address: 'a.foo.com/bar', cache_period_in_minutes: 100 }
      cache['B'] = { address: 'b.foo.com/bar', cache_period_in_minutes: 100 }
      cache['C'] = { address: 'c.foo.com/bar', cache_period_in_minutes: 100 }
      cache['B'] = { address: 'd.foo.com/bar', cache_period_in_minutes: 100 }
      expect(cache.key?('A')).to be_falsey
      expect(cache['B'].address).to eq('d.foo.com/bar')
      cache['D'] = { address: 'e.foo.com/bar', cache_period_in_minutes: 100 }
      cache['E'] = { address: 'f.foo.com/bar', cache_period_in_minutes: 100 }
      expect(cache.key?('B')).to be_truthy
    end

    it 'supports updating cache from polling threads' do
      cache = Aws::EndpointCache.new(max_entries: 3)
      t = Thread.new do
        cache['A'] = { address: 'a.foo.com/foo', cache_period_in_minutes: 60 }
      end
      cache.update_polling_pool('A', t)
      sleep(2)
      expect(cache.key?('A')).to be_truthy
      expect(cache['A'].address).to eq('a.foo.com/foo')
      cache.delete_polling_thread('A')
    end

    it 'deletes least recently used entry when cache is full' do
      cache = Aws::EndpointCache.new(max_entries: 3)
      cache['A'] = { address: 'a.foo.com/bar', cache_period_in_minutes: 100 }
      cache['A_O1'] = { address: 'b.foo.com/bar', cache_period_in_minutes: 100 }
      cache['A_O2'] = { address: 'c.foo.com/bar', cache_period_in_minutes: 100 }
      cache['A']
      expect(cache.key?('A_O1')).to be_truthy
      cache['B'] = { address: 'foo.com/bar', cache_period_in_minutes: 100 }
      expect(cache.key?('A_O1')).to be_falsey
    end

    it 'supports checking whether a valid key is available' do
      cache = Aws::EndpointCache.new
      cache['A'] = { address: 'a.foo.com/bar', cache_period_in_minutes: -1 }
      expect(cache.key?('A')).to be_falsey
    end

    it 'supports delete entry from cache with key' do
      cache = Aws::EndpointCache.new
      cache['A'] = { address: 'a.foo.com/bar', cache_period_in_minutes: 60 }
      cache.delete('A')
      expect(cache.key?('A')).to be_falsey
    end

    it 'supports delete polling thread from pool' do
      cache = Aws::EndpointCache.new
      t = Thread.new do
        2.times do
          cache['A'] = { address: 'a.foo.com/foo', cache_period_in_minutes: 60 }
          sleep(5)
        end
      end
      cache.update_polling_pool('A', t)
      cache.delete_polling_thread('A')
      expect(cache.pool.key?('A')).to be_falsey
      sleep(2) # thread kill takes time
      expect(t.alive?).to be_falsey
    end

    it 'kills all polling thread when #stop_polling! is called' do
      cache = Aws::EndpointCache.new
      ta = Thread.new do
        2.times do
          cache['A'] = { address: 'a.foo.com/foo', cache_period_in_minutes: 60 }
          sleep(5)
        end
      end
      cache.update_polling_pool('A', ta)
      tb = Thread.new do
        2.times do
          cache['A'] = { address: 'b.foo.com/foo', cache_period_in_minutes: 60 }
          sleep(5)
        end
      end
      cache.update_polling_pool('B', tb)
      cache.stop_polling!
      sleep(3) # give it some time to kill threads
      expect(ta.alive?).to be_falsey
      expect(tb.alive?).to be_falsey
      expect(cache.pool.size).to be_zero
    end

    it 'kills old thread when reaches :max_threads' do
      cache = Aws::EndpointCache.new(max_threads: 1)
      ta = Thread.new do
        2.times do
          cache['A'] = { address: 'a.foo.com/foo', cache_period_in_minutes: 60 }
          sleep(5)
        end
      end
      cache.update_polling_pool('A', ta)
      tb = Thread.new do
        2.times do
          cache['A'] = { address: 'b.foo.com/foo', cache_period_in_minutes: 60 }
          sleep(5)
        end
      end
      cache.update_polling_pool('B', tb)
      sleep(2) # kill threads takes time
      expect(ta.alive?).to be_falsey
      expect(cache.threads_key?('A')).to be_falsey
    end
  end
end
