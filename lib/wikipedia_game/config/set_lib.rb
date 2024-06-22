# frozen_string_literal: true

module WikipediaGame
  module Config
    module SetLib
      extend(self)

      LIB_DIR = File.expand_path(File.join(__FILE__, '../../..'))

      def execute!
        $LOAD_PATH.unshift(LIB_DIR) unless $LOAD_PATH.include?(LIB_DIR)
      end
    end
  end
end
