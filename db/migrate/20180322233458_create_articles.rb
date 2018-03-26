class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :elevio_id
      t.string :name

      t.timestamps
    end
  end
end
