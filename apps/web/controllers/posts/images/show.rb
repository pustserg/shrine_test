module Web::Controllers::Posts::Images
  class Show
    include Web::Action
    expose :image

    def call(params)
      @image = ImageRepository.new.find_by_id(params[:id])
    end
  end
end
