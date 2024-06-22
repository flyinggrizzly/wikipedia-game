# frozen_string_literal: true

require_relative './config/set_lib'

module WikipediaGame
  module Config
    extend(self)

    def execute_all!
      SetLib.execute!
    end
  end
end
