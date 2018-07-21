require_relative '../uploaders/file_uploader'

class Image < Hanami::Entity
  include FileUploader[:file]
end
