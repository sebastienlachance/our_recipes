class Recipe < ActiveRecord::Base
  attr_accessible :title

  def self.text_search(query)
    if query.present?
      # search(query)
      rank = <<-RANK
        ts_rank(to_tsvector(title), plainto_tsquery(#{sanitize(query)}))
      RANK
      where("to_tsvector('english', title) @@ plainto_tsquery(#{sanitize(query)})").order("#{rank} desc")
    else
      scoped
    end

  end

end
