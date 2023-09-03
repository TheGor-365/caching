class Book < ApplicationRecord
  belongs_to :store, touch: true
end
