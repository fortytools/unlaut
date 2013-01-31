# coding: utf-8
module Unlaut
  class Map
    class << self
      def replace(from, to)
        @map ||= {}
        @map[from] = to
        @src_chars = nil
      end

      def src_chars
        @src_chars ||= @map.keys.join()
      end
      
      def execute(string)
        string.gsub(src_chars) {|char| @map[char] }
      end
    end

    replace 'ä', 'a'
  end
end
 
class String
  def to_i18n
    Unlaut::Map.execute(self)
  end
end
