module Web::Views::Posts
  class New
    include Web::View

    def form
      form_for :post, routes.posts_path do
        text_field :title
        textarea '', name: 'post[content]'
        submit 'Save'
      end
    end
  end
end
