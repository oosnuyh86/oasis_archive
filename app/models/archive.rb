class Archive < ActiveRecord::Base
  def self.search(query)
	where("keyword_1 like ?", "%#{query}%") + where("keyword_2 like ?", "%#{query}%") + where("keyword_3 like ?", "%#{query}%")
#	where("keyword_1 like ? OR keyword_2 like ? OR keyword_3 like ?", "%#{query}%","%#{query}%", "%#{query}%")
#   	@archives = Archive.all
#	@archives = @archives.where("keyword_1 like ?", "%#{query}#%")	
  end
end
