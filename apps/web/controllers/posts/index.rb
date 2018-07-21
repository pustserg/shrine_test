module Web::Controllers::Posts
  class Index
    include Web::Action
    expose :posts

    def call(_params)
      @posts = PostRepository.new.posts
    end
  end
end
