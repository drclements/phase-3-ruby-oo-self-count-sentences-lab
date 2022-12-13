require 'pry'

class String

  def sentence?
    split_string = self.split("")
    if split_string[-1] == "."
      true
    else false
    end
  end
  
  def question?
    split_string = self.split("")
    if split_string[-1] == "?"
      true
    else false
    end
  end
  
  def exclamation?
    split_string = self.split("")
    if split_string[-1] == "!"
      true
    else false
    end
  end
  
  def count_sentences
    split_string = self.split("")
    count = 0
    split_string.each.with_index {|c, index| 
      if c == "." || c == "!" || c == "?"
        count += 1 
        if split_string[index + 1] == "." || split_string[index + 1] == "!" || split_string[index + 1] == "?"
          count -= 1
        end
      end
    } 
      count    
  end
end

binding.pry
"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences