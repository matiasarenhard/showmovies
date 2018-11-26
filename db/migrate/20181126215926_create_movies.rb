class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :url
      t.references :user, foreign_key: true
      t.boolean :public

      t.timestamps
    end
  end
end
