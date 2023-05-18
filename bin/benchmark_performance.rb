require 'tmpdir'
require 'benchmark'
require 'memory_profiler'
require 'json'

# Modify load path to include all of our gems from local repo
Dir.glob("gems/*/lib") do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

benchmark_data = {}
begin
  benchmark_data['commit_id'] = `git rev-parse HEAD`.strip
rescue
  # unable to get a commit, maybe run outside of a git repo.  Skip
end

def benchmark_require(gem, data)
  rd, wr = IO.pipe
  p1 = fork do
    t1 = Time.now
    require gem
    wr.write(Time.now - t1)
    wr.close
  end
  Process.wait(p1)
  wr.close
  data['require_time_ms'] = rd.read.to_f * 1000.0
  rd.close

  rd, wr = IO.pipe
  p2 = fork do
    require 'memory_profiler'
    r = ::MemoryProfiler.report { require gem }
    wr.write(r.total_retained_memsize)
    wr.close
  end
  Process.wait(p2)
  wr.close
  data['require_mem_retained'] = rd.read.to_i
  rd.close
end

def benchmark_client(gem, module_name, data)
  rd, wr = IO.pipe
  p2 = fork do
    require gem
    client_klass = Aws.const_get(module_name).const_get(:Client)
    r = ::MemoryProfiler.report { client_klass.new }
    wr.write(r.total_retained_memsize)
    wr.write("\n")
    n = 1000
    r = Benchmark.bm do |x|
      x.report { n.times do   ; a = client_klass.new; end }
    end
    wr.write( r.first.total / n * 1000.0)
    wr.close
  end
  Process.wait(p2)
  wr.close
  mem,t = rd.read.split("\n")
  data['client_mem_retained'] = mem.to_i
  data['client_init_ms'] = t.to_f
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
