module FleschKincaid

  ##
  # Internal: Tests a block of text based on the Flesch-Kincaid readability test and
  # returns a {Result}.
  #
  #
  # Examples
  #
  #   FleschKincaid::Test.new("A sentence that is long and hard to read").result
  class Test

    BASE = 206.835.freeze

    SENTENCE_MULTIPLIER = 1.015.freeze

    SYLLABLE_MULTIPLIER = 84.6.freeze

    WORD_REGEX = /\w+[^\w]/.freeze

    SENTENCE_REGEX = /[\w\s](\.|\!|\?)+/.freeze

    COMPRESS_VOWEL_REGEX = /(?:[^laeiouy]es|ed|[^laeiouy]e)$/.freeze

    Y_REGEX = /^y/.freeze

    VOWEL_REGEX = /[aeiouy]{1,2}/.freeze


    attr_reader :text


    def initialize(text)
      @text = text
    end

    def result
      @result ||= Result.new(formula_output)
    end

    # The total number of words in {text}
    #
    # Returns {Integer}
    def total_words
      text.scan(WORD_REGEX).count
    end

    # The total number of sentences in {text}
    #
    # Returns {Integer}
    def total_sentences
      text.scan(SENTENCE_REGEX).count
    end

    # The total number of syllables in {text}
    #
    # Returns {Integer}
    def total_syllables
      return 1 if text.length <= 3
      text
        .downcase
        .sub(COMPRESS_VOWEL_REGEX, '')
        .sub(Y_REGEX, '')
        .scan(VOWEL_REGEX).size
    end


    private


    # Runs the Flesch Kincaid formula:
    #
    # 206.835 - 1.015(totalwords / totalsentences) - 84.6 (totalsyllables / total words)
    #
    # Returns {Float}
    def formula_output
      return 0.0 if total_words == 0 || total_sentences == 0
      sentence_val = SENTENCE_MULTIPLIER * Rational(total_words, total_sentences)
      syllable_val = SYLLABLE_MULTIPLIER * Rational(total_syllables, total_words)
      (BASE - sentence_val - syllable_val).round(2)
    end

  end
end
