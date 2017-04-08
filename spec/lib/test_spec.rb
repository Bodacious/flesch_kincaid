require "spec_helper"

describe FleschKincaid::Test do

  TEXT = <<-TEXT
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua?! Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat! Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  TEXT

  subject { FleschKincaid::Test.new(TEXT) }

  describe "#result" do

    it "returns a result object" do
      expect(subject.result).to be_instance_of(FleschKincaid::Result)
    end

  end

  describe "#total_words" do

    it "returns the correct number of words" do
      expect(subject.total_words).to eql(69)
    end

  end

  describe "#total_sentences" do

    it "returns the correct number of sentences" do
      expect(subject.total_sentences).to eql(4)
    end

  end

  describe "#total_syllables" do

    it "returns the correct number of syllables" do
      expect(subject.total_syllables).to eql(150)
    end

  end

end
