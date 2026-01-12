# frozen_string_literal: true

# Directory spec helper
module DirectoryHelper
  class << self
    def create_test_directory_structure(base_dir)
      # Root files
      create_file_with_size(base_dir, 'small.txt', 1024) # 1KB
      create_file_with_size(base_dir, 'medium.log', 1024 * 1024) # 1MB
      create_file_with_size(base_dir, 'large.dat', 10 * 1024 * 1024) # 10MB
      create_file_with_size(base_dir, 'huge.bin', 20 * 1024 * 1024) # 20MB
      create_file_with_size(base_dir, 'target.txt', 1024 * 1024) # 1MB

      # Nested directories
      subdir1 = File.join(base_dir, 'documents')
      Dir.mkdir(subdir1)
      create_file_with_size(subdir1, 'readme.md', 2048) # 2KB
      create_file_with_size(subdir1, 'backup.zip', 10 * 1024 * 1024) # 10MB

      subdir2 = File.join(base_dir, 'images')
      Dir.mkdir(subdir2)
      create_file_with_size(subdir2, 'photo1.jpg', 2 * 1024 * 1024) # 2MB

      # Deep nesting
      subdir3 = File.join(subdir2, 'thumbnails')
      Dir.mkdir(subdir3)
      create_file_with_size(subdir3, 'thumb.jpg', 50 * 1024) # 50KB

      # Symlinks for testing
      File.symlink(File.join(base_dir, 'small.txt'), File.join(base_dir, 'small_link.txt'))
      File.symlink(subdir1, File.join(base_dir, 'docs_link'))

      # Recursive symlink (points back to parent directory)
      File.symlink(base_dir, File.join(subdir1, 'parent_link'))
      File.symlink(File.join(base_dir, 'target.txt'), File.join(base_dir, 'link1.txt'))
      File.symlink(File.join(base_dir, 'link1.txt'), File.join(base_dir, 'link2.txt'))
    end

    private

    def create_file_with_size(dir, filename, size_bytes)
      file_path = File.join(dir, filename)
      File.write(file_path, 'x' * size_bytes)
    end
  end
end
