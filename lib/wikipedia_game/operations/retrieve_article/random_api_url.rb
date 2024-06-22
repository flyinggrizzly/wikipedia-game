# frozen_string_literal: true

require 'httparty'

require 'wikipedia_game/operations/retrieve_article/extract_url_path'
require 'wikipedia_game/operations/retrieve_article/api_url'

module WikipediaGame
  module Operations
    module RetrieveArticle
      module RandomApiUrl
        extend(self)

        URL = "https://en.wikipedia.org/wiki/Special:Random"

        def get
          random_path = HTTParty.get(URL)
            .request
            .path
            .path

          page_path = ExtractUrlPath.extract(random_path)

          ApiUrl.new(page_path)
        end
      end
    end
  end
end
