class Item
  attr_accessor:text, :checked
  
  def initialize(text="")
    @text = text
    @checked = false
  end

#para chechar que se muestra de acuerdo al estatus del check
  def to_s
    if @checked
      "[x] " + @text
    else
      "[ ] " + @text
    end
  end

end
