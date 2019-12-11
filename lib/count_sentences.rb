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
    sentence = self.split(".")
    sentence = sentence.join("?")
    sentence = sentence.split("?")
    sentence = sentence.join("!")
    sentence = sentence.split("!")
    10.times{puts sentence}
  end
  
end