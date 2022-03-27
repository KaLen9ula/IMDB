class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|

      t.references :movie, show: true
      t.references :user, show: true
      t.integer :rating
      t.timestamps
    end
  end
end
