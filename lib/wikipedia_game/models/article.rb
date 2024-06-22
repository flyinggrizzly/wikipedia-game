# frozen_string_literal: true

module WikipediaGame
  Article = Struct.new(:url, :title, :content, keyword_init: true) do
  end
end

