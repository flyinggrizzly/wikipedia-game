# frozen_string_literal: true

module WikipediaGame
  module Operations
    module RetrieveArticle
      module ExtractUrlPath
        extend(self)

        PAGE_NAME = 'path'
        PATH_REGEX = /^\/wiki\/(?<#{PAGE_NAME}>[^\/]+)\/?$/
        URL_REGEX = /^https:\/\/\w{2,}\.wikipedia\.org\/wiki\/(?<#{PAGE_NAME}>[^\/]+)\/?$/

        def extract(url)
          (url.match(URL_REGEX) || url.match(PATH_REGEX))
            .named_captures
            .fetch(PAGE_NAME)
        end
      end
    end
  end
end
