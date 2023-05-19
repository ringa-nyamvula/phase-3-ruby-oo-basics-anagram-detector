class Anagram
    attr_reader :word

    def initialize(word)
      @word = word
    end

    def match(words)
      words.select { |w| anagram?(w) }
    end

    private

    def anagram?(other_word)
      sorted_word == sorted_chars(other_word)
    end

    def sorted_word
      @sorted_word ||= sorted_chars(word)
    end

    def sorted_chars(str)
      str.downcase.chars.sort
    end
  end
