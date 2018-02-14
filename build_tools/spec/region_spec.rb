# Note: this spec test helps checking all source code:
# no hard-coded regions unless have to

def gem_lib_paths
  gems_dir = File.expand_path("../../../gems/", __FILE__)
  Dir.glob("#{gems_dir}/aws-sdk-*/lib/aws-sdk-*/").sort
end

def whitelist
  {
    "core" => {
      "errors.rb" => 102,
      "signature_v4.rb" => 35,
      "stub_responses.rb" => 19
    },
    "s3" => {
      "location_constraint.rb" => 12,
      "s3_signer.rb" => 195
    }
  }
end

describe "ensure no hard-coded region" do

  gem_lib_paths.each do |dir|
    key = dir.split("/").last.split("-").last

    Dir.glob("#{dir}**/*").sort.each do |path|
      next if File.directory? path

      file = File.open(path, 'r', encoding: 'UTF-8') { |f| f.read } 
      lines = file.lines.to_a

      it "#{path} has no hard-coded region" do
        lines.each_with_index do |val, idx|
          # skip comment code
          next if val.strip[0] == "#"
          # skip known whitelists
          next if whitelist[key] && whitelist[key][File.basename(path)] == idx
          expect(val).not_to match(/(us|eu|ap|sa|ca)-\w+-\d+/)        
        end
      end

    end

  end

end
