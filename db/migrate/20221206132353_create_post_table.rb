class CreatePostTable < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :caption
      t.string :image

      t.timestamps
    end
  end
end
