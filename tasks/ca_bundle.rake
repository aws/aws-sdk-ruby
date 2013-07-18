# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.


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
