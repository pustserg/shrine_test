require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new(Dir.tmpdir),
  store: Shrine::Storage::FileSystem.new("public", prefix: "uploads")
}

class FileUploader < Shrine
  plugin :hanami
end
