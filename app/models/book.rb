class Book < ApplicationRecord
  belongs_to :store, touch: true

  def cached_books
    Rails.cache.fetch("#{cache_key_with_version}/cached_books", expires_in: 2.seconds) do
      Book.limit(100)
    end
  end
end
