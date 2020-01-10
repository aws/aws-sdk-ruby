Before("@glacier") do
  @client = Aws::Glacier::Client.new
end

After("@glacier") do
end

def upload_glacier_archive(contents)
  resp = @client.upload_archive(
    vault_name: @vault_name,
    body: contents
  )
  @archive_id = resp.data.archive_id if resp.data
end

def create_file(size_in_mb)
  file = Tempfile.new('aws-sdk-core-glacier-sample')
  file.write('.' * bytes(size_in_mb.to_f))
  file.rewind
  file
end

def bytes(megabytes)
  megabytes.to_f * 1024 * 1024
end

Given(/^I have a vault ready to receive uploads$/) do
  # ensure we have a suitable vault for testing with
  @vault_name = 'aws-sdk-core-integration-test-vault'
  begin
    @client.describe_vault(vault_name: @vault_name, account_id: '-')
  rescue Aws::Glacier::Errors::ResourceNotFoundException
    @client.create_vault(vault_name: @vault_name, account_id: '-')
  end
end

When(/^I upload an archive with the contents "(.*?)"$/) do |contents|
  begin
    upload_glacier_archive(contents)
  rescue => @error
  end
end

When(/^I upload an archive from a ([0-9\.]+)MB large file$/) do |size_in_mb|
  upload_glacier_archive(create_file(size_in_mb))
end

When(/^I multipart\-upload a ([0-9\.]+)MB file in ([0-9\.]+) byte chunks$/) do |size_in_mb, part_size|

  file = create_file(size_in_mb)
  part_size = part_size.to_i

  # start the multipart upload
  resp = @client.initiate_multipart_upload(
    vault_name: @vault_name,
    part_size: part_size
  )
  @upload_id = resp.data.upload_id

  # Keep a rolling tree hash of the entire file, required to complete the
  # multipart upload at the end
  tree_hash = Aws::TreeHash.new

  # Upload the file in chunks and extract from each response the tree hash
  # for that chunk. This eliminates the need to compute the total tree hash
  # of the object in a second pass.
  offset = 0
  until file.eof?
    chunk = file.read(part_size)
    resp = @client.upload_multipart_part(
      vault_name: @vault_name,
      upload_id: @upload_id,
      body: chunk,
      range: "bytes #{offset}-#{offset+chunk.bytesize-1}/*"
    )
    tree_hash.hashes.concat(resp.context[:tree_hash].hashes)
    offset += chunk.bytesize
  end

  # complete the multipart upload
  resp = @client.complete_multipart_upload(
    vault_name: @vault_name,
    upload_id: @upload_id,
    archive_size: file.size,
    checksum: tree_hash.digest
  )
  @archive_id = resp.archive_id

end

Then(/^I should be able to delete the archive$/) do
  @client.delete_archive(vault_name: @vault_name, archive_id: @archive_id)
end
