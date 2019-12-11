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
    sentence = self.split(".")new
    arr = []
    arr2 = []
    sentence.each do |sentence1|
      if sentence1.include?("?")
        arr << sentence1.split("?")
      else
        arr << sentence1
      end
    end
    
    arr.each do |sentence1|
      if sentence1.include?("!")
        arr2 << sentence1.split("!")
      else
        arr2 << sentence1
      end
    end
    
    sum = 0 
    arr2.each do |element|
      if element.size > 0 
        sum += 1 
      end
    end
     
    sum
    end
  end
end