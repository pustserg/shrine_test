module Web::Controllers::Posts::Images
  class Create
    include Web::Action

    def call(params)
      if create_image(params)
        redirect_to routes.post_path(params[:post_id])
      else
        self.status = :unprocessable_entity
      end
    end

    private

    def create_image(params)
      image = Image.new post_id: params[:post_id],
                        file: params[:image][:file][:tempfile]
      ImageRepository.new.create image
    end
  end
end
