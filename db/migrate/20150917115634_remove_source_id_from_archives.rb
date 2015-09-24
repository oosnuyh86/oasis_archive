class RemoveSourceIdFromArchives < ActiveRecord::Migration
  def change
	remove_column :archives, :source_id, :translator_id
  end
end
