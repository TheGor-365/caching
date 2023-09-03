class AddStoreToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :store, null: true, foreign_key: true, index: true
  end
end
