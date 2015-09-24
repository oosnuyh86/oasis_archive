class RemoveTranslatorIdFromArchives < ActiveRecord::Migration
  def change
	remove_column :archives, :translator_id
  end
end
