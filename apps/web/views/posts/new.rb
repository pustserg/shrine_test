module Web::Views::Posts
  class New
    include Web::View

    def form
      form_for :post, routes.posts_path do
        text_field :title
        textarea :content
        submit 'Save'
      end
    end
  end
end
