module Web::Controllers::Posts
  class Create
    include Web::Action

    def call(params)
      if create_post(params)
        redirect_to posts_path
      else
        self.status = :unprocessable_entity
      end
    end

    private

    def create_post(params)
      post_params = params.fetch(:post)
      return unless post_params
      PostRepository.new.create title: post_params[:title],
                                content: post_params[:content]
    end
  end
end
