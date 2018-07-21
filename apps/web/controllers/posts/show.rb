module Web::Controllers::Posts
  class Show
    include Web::Action
    expose :post
    expose :images

    def call(params)
      @post = PostRepository.new.find_by_id(params[:id])
      @images = ImageRepository.new.for_post(@post.id)
    end
  end
end
