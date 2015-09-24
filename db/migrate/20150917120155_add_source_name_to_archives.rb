class AddSourceNameToArchives < ActiveRecord::Migration
  def change
    add_column :archives, :source_name, :string
    add_column :archives, :translator, :string
    add_column :archives, :source_url, :string
  end
end
