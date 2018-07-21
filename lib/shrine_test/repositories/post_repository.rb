class PostRepository < Hanami::Repository
  def find_by_id(id)
    posts.where(id: id).one
  end
end
