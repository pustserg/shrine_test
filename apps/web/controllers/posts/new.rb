module Web::Controllers::Posts
  class New
    include Web::Action
    expose :post

    def call(_params)
      @post = Post.new
    end
  end
end
