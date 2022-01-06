require "./item.rb"
class Lista
  attr_writer :items

  def initialize()
    @items = Array.new()
  end

  def addItem(text)
    item = Item.new(text)
    @items.push(item)
  end

  def removeItem(indItem)
    @items.delete_at(indItem)
  end

  def checkedItem(indItem)
    @items[indItem].checked = true
    @items[indItem]
  end

  def removeAll
    @items.clear
    puts "Items deleted"
  end

  def showAll
    if @items.length == 0
      puts "No tienes ningun articulo"
    else
      puts "Aqui estan tus articulos"
      @items.each_index do |ind|
        puts ind.to_s + " - " + @items[ind].to_s
      end
    end
  end

end
