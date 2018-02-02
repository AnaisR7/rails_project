class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titre
      t.date :date
      t.text :chapeau
      t.string :vignette
      t.string :nomAuteur

      t.timestamps
    end
  end
end
