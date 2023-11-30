namespace :rbs do
  task :validate do
    require 'rubygems'

    all_gems = Dir.glob("gems/*").map{File.basename(_1)}.to_set

    sigs = []
    Dir.glob('gems/*/sig').each do |dir|
      sdk_gem = dir.sub(%r{gems/(.*)/sig}, '\1')
      spec = Gem::Specification::load("gems/#{sdk_gem}/#{sdk_gem}.gemspec")
      deps = spec.dependencies.select do |d|
        all_gems.include?(d.name) && File.directory?("gems/#{d.name}/sig")
      end.map { |d| d.name }

      puts "Validating gem `#{sdk_gem}` with deps #{deps}"
      sh("bundle exec rbs #{deps.map{"-I gems/#{_1}/sig"}.join(' ')} -I #{dir} validate --silent") do |ok, _|
        sigs << File.basename(File.dirname(dir)) unless ok
      end
    end
    abort('one or more rbs validate failed: %s' % [sigs.join(', ')]) unless sigs.empty?
  end
end
