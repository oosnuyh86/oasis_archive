class AddKorTitleToArchives < ActiveRecord::Migration
  def change
    add_column :archives, :kor_title, :string
  end
end
