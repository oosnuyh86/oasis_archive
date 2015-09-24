class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :title
      t.text :description
      t.references :source, index: true
      t.date :release
      t.string :keyword_1
      t.string :keyword_2
      t.string :keyword_3
      t.text :english_doc
      t.text :korean_doc
      t.references :translator, index: true
      t.string :doc_id

      t.timestamps
    end
    add_index :archives, :doc_id, unique: true
  end
end
