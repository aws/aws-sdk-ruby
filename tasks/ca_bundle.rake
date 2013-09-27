
desc "Updates the bundled ca-bundle.crt file used by NetHttpHandler"
task :update_ca_bundle do

  require 'net/http'

  Net::HTTP.start("curl.haxx.se", 80) do |http|
    get = Net::HTTP::Get.new('/ca/cacert.pem')
    http.request(get) do |resp|
      if resp.code == "200"
        filename = File.join(File.dirname(__FILE__), '..', 'ca-bundle.crt')
        File.open(filename, 'wb', :encoding => 'BINARY') do |file|
          resp.read_body do |chunk|
            file.write(chunk)
          end
        end
      else
        raise "unexpected #{resp.code} response"
      end
    end

  end
end
