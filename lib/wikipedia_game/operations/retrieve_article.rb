# frozen_string_literal: true

require 'httparty'

require 'wikipedia_game/models/article'
require 'wikipedia_game/operations/retrieve_article/random_api_url'
require 'wikipedia_game/operations/retrieve_article/extract_article_content_html'

module WikipediaGame
  module Operations
    module RetrieveArticle
      extend(self)

      def perform(url = nil)
        url = RandomApiUrl.get if url.nil?

        request = HTTParty.get(url.to_s)
        raise FailedToRetrieve(url.to_s) unless request.ok?

        body = JSON.parse(request.body)

        puts url.to_url
        Article.new(
          url:,
          title: body['title'],
          content: ExtractArticleContentHtml.perform(body['html'])
        )
      end
    end
  end
end
