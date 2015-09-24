require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/Archive_Form.csv"), headers: true) do |row|
  Archive.find_or_create_by(title: row[0], kor_title: row[1], source_name: row[4], doc_id: row[5], release: row[6], keyword_1: row[7], keyword_2: row[8], keyword_3: row[9], english_doc: row[10], korean_doc: row[11], translator: row[12], source_url: row[13])
end
