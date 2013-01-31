# coding: utf-8
module Unlaut
  class Map
    class << self
      def replace(from, to)
        if from.length > 1
          from.each_char{|c| replace c, to}
        else
          @map ||= {}
          @map[from] = to
          @src_chars = nil
        end
      end

      def src_chars
        @src_chars ||= Regexp.new('[' + @map.keys.join()  + ']')
      end
      
      def execute(string)
        string.gsub(src_chars) {|char| @map[char] }
      end
    end

    replace 'ÂÃÄÀÁÅÆ', 'A'
    replace 'Ç', 'C'
    replace 'ÈÉÊË', 'E'
    replace 'ÌÍÎÏ', 'I'
    replace 'Ð', 'D'
    replace 'Ñ', 'N'
    replace 'ÒÓÔÕÖØ', 'O'
    replace 'ÙÚÛÜ', 'U'
    replace 'ÞÝ', 'Y'
    replace 'ÙÚÛÜÝ', 'U'
    replace 'ß', 'ss'
    replace 'àáâãäåæ', 'a'
    replace 'ç', 'c'
    replace 'èéêë', 'e'
    replace 'ìíî', 'i'
    replace 'ðñòóôõöø', 'o'
    replace 'ùúûü', 'u'
    replace 'ýþÿ', 'y'
  end
end
 
class String
  def no_i18n
    Unlaut::Map.execute(self)
  end
end
