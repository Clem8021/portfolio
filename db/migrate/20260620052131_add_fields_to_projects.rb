class AddFieldsToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :url, :string
    add_column :projects, :technologies, :string
    add_column :projects, :year, :integer
    add_column :projects, :tagline, :string
  end
end
