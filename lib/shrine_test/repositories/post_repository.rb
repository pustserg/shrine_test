class PostRepository < Hanami::Repository
  associations do
    has_many :images
  end

  def find_by_id(id)
    posts.where(id: id).one
  end
end
