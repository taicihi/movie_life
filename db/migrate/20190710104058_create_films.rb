class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :film_name
      t.text :summary
      t.string :image

      t.timestamps
    end
  end
end
