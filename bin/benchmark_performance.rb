require 'tmpdir'
require 'benchmark'
require 'memory_profiler'
require 'json'

# Modify load path to include all of our gems from local repo
Dir.glob("gems/*/lib") do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

benchmark_data = {'version' => '1.0'}
begin
  benchmark_data['commit_id'] = `git rev-parse HEAD`.strip
rescue
  # unable to get a commit, maybe run outside of a git repo.  Skip
end

# Run a block in a fork and returns the data from it
# the block must take a single argument and will be called with an empty hash
# any data that should be communicated back to the parent process can be written to that hash
def fork_run(&block)
  rd, wr = IO.pipe
  p1 = fork do
    h = {}
    block.call(h)
    wr.write(JSON.dump(h))
    wr.close
  end
  Process.wait(p1)
  wr.close
  h = JSON.parse(rd.read, symbolize_names: true)
  rd.close
  return h
end

def benchmark_require(gem, data)
  data.merge!(fork_run do |out|
    t1 = Time.now
    require gem
    out[:require_time] = Time.now - t1
  end)

  data.merge!(fork_run do |out|
    r = ::MemoryProfiler.report { require gem }
    out[:require_mem_retained] = r.total_retained_memsize
  end)
end

def benchmark_client(gem, module_name, data)
  data.merge!(fork_run do |out|
    require gem
    client_klass = Aws.const_get(module_name).const_get(:Client)
    r = ::MemoryProfiler.report { client_klass.new }
    out[:client_mem_retained] = r.total_retained_memsize

    n = 1000
    r = Benchmark.bm do |x|
      x.report { n.times do   ; a = client_klass.new; end }
    end
    out[:client_init_ms] = r.first.total / n * 1000.0
  end)
end

benchmark_gems = {
  'aws-sdk-core' => {},
  'aws-sdk-s3' => {
    module: :S3
  },
  'aws-sdk-dynamodb' => {
    module: :DynamoDB
  }
}

Dir.mktmpdir("ruby-sdk-benchmark") do |tmpdir|
  benchmark_gems.each do |gem, benchmark_def|
    benchmark_data[gem] ||= {}
    Dir.chdir("gems/#{gem}") do
      `gem build #{gem}.gemspec -o #{tmpdir}/#{gem}.gem`
      benchmark_data[gem]['gem_size'] = File.size("#{tmpdir}/#{gem}.gem")
      benchmark_data[gem]['gem_version'] = File.read("VERSION").strip
    end
    benchmark_require(gem, benchmark_data[gem])
    if benchmark_def[:module]
      benchmark_client(gem, benchmark_def[:module], benchmark_data[gem])
    end
  end
end

puts benchmark_data
File.write("benchmark_report.json", JSON.pretty_generate(benchmark_data))
