module BuildTools

  # @return [Hash]
  def self.load_client_examples(svc_identifier)
    dir = File.expand_path("../../doc-src/examples/#{svc_identifier}", __FILE__)
    files = Dir.glob("#{dir}/client/**/*.rb").sort
    files.inject({}) do |examples, path|
      parts = path.split('/')
      operation = parts[-2]
      title = File.basename(path).split(/\./).first
      title = title.sub(/^\d+_/, '').gsub(/_/, ' ')
      title = title[0].upcase + title[1..-1]
      examples[operation] ||= []
      examples[operation] << {
        name: title,
        code: File.read(path),
      }
      examples
    end
  end

end
