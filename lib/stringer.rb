require "stringer/version"
module Stringer
    def self.spacify *strings
        string = ""
        strings.each_with_index do |s, index|
            if index == 0
              string += s
            else
              string += " " + s
            end
        end
        string
    end
    def self.minify strings, max_length
      string = ""
      if strings.length <= max_length
        strings
      else
        for i in 0...max_length
          string += strings[i]
        end
        string += "..."
      end
    end
    def self.replacify strings, to_replace, replacement
      if strings.include? to_replace
        strings[to_replace] = replacement
      end
      strings
    end

    def self.tokenize strings
      strings.split(' ')
    end

    def self.removify strings, to_remove
      if strings.include? to_remove
        strings.slice! " #{to_remove}"
      end
      strings
    end
end