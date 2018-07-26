module Web::Controllers::Posts
  class Create
    include Web::Action

    def call(params)
      if create_post(params)
        redirect_to routes.posts_path
      else
        self.status = :unprocessable_entity
      end
    end

    private

    def create_post(params)
      post_params = params[:post]
      PostRepository.new.create title: post_params[:title],
                                content: post_params[:content]
    end
  end
end
