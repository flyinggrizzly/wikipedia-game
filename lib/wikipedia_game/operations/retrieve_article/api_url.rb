# frozen_string_literal: true

module WikipediaGame
  module Operations
    module RetrieveArticle
      ApiUrl = Struct.new(:path) do
        def to_url
          # TODO: handle different locales but whatever
          "https://en.wikipedia.org/w/rest.php/v1/page/#{path}/with_html"
        end

        def to_s
          to_url
        end
      end
    end
  end
end
