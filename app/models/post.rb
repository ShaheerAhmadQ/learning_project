class Post < ApplicationRecord
  ALL_COLUMNS = Post.columns_hash.keys.map(&:to_sym)
  GENRE = %i[Narrative Fiction Drama Mystery Thriller].freeze
  ENABLED = %i[True False].freeze
  POST_TYPE = %i[Public Private]

  searchkick word_middle: ALL_COLUMNS
end
