class ImageRepository < Hanami::Repository
  prepend FileUploader.repository(:file)

  associations do
    belongs_to :post
  end

  def for_post(post_id)
    images.where(post_id: post_id)
  end
end
