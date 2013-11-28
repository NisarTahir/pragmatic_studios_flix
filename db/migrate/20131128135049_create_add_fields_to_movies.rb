class CreateAddFieldsToMovies < ActiveRecord::Migration
  def change
    create_table :add_fields_to_movies do |t|
      t.text :description
      t.date :released_on

      t.timestamps
    end
  end
end
