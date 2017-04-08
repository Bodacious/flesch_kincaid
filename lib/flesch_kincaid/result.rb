module FleschKincaid

  # Internal: A test result object, containing the score, grade, and notes.
  #
  # Examples
  #
  #   @result = Result.new(80)
  #   @result.score # => 80.0
  #
  #   @result = Result.new(80)
  #   @result.grade # => "6th grade"
  #
  #   @result = Result.new(80)
  #   @result.notes # => "Easy to read. Conversational English for consumers."
  class Result

    ##
    # The Flesh Kincaid formula result score.
    #
    # Returns {Float}
    attr_reader :score


    # Initialize a new Result
    #
    # score - The Flesh Kincaid formula result score.
    #
    def initialize(score)
      @score = score.to_f
    end

    # Approx. reading age for score.
    #
    # Returns {String}
    def grade
      case score
      when 90..100 then "5th grade"
      when 80..90  then "6th grade"
      when 70..80  then "7th grade"
      when 60..70  then "8th & 9th grade"
      when 50..60  then "10th to 12th grade"
      when 30..50  then "College"
      when 1..30   then "College Graduate"
      else
        "n/a"
      end
    end

    # Additional notes to describe the score
    #
    # Returns {String}
    def notes
      case score
      when 90..100
        "Very easy to read. Easily understood by an average 11-year-old student."
      when 80..90
        "Easy to read. Conversational English for consumers."
      when 70..80
        "Fairly easy to read."
      when 60..70
        "Plain English. Easily understood by 13-15-year-old students."
      when 50..60
        "Fairly difficult to read."
      when 30..50
        "Difficult to read."
      when 1..30
        "Very difficult to read. Best understood by university graduates."
      else
        "No score available"
      end
    end

  end

end
