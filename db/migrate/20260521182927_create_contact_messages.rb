class CreateContactMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :contact_messages do |t|
      t.string :name
      t.string :email
      t.string :project_type
      t.text :body

      t.timestamps
    end
  end
end
