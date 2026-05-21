class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :image
      t.boolean :featured
      t.integer :position

      t.timestamps
    end
  end
end
