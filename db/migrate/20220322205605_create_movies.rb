class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.references :category, show: true
      t.timestamps
    end
  end
end
