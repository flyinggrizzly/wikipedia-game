# frozen_string_literal: true

require 'nokogiri'

module WikipediaGame
  module Operations
    module RetrieveArticle
      module ExtractArticleContentHtml
        extend(self)

        def perform(html_string)
          doc = Nokogiri::HTML(html_string)
          binding.irb
        end
      end
    end
  end
end
