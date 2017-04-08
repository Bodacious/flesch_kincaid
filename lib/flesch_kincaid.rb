require "flesch_kincaid/version"
require "flesch_kincaid/test"
require "flesch_kincaid/result"
module FleschKincaid

  module_function

  def read(text)
    FleschKincaid::Test.new(text).result
  end

end
