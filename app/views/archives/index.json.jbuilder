json.array!(@archives) do |archive|
  json.extract! archive, :id, :title, :description, :source_id, :release, :keyword_1, :keyword_2, :keyword_3, :english_doc, :korean_doc, :translator_id, :doc_id
  json.url archive_url(archive, format: :json)
end
