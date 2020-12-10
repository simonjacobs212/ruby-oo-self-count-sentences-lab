require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    cleaned_str = self.delete(',')
    string_arr = cleaned_str.split(/[[:punct:]]/)
    string_arr.filter{ |elem| elem.length > 0 }.count
  end

end