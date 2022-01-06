require "./item.rb"
require "./lista.rb"

class App
  attr_writer :list

  def initialize
    @list = Lista.new
  end
  def run
    puts "Holi, vamos a agregar articulos"
    loop do
      puts "z - addItem"
      puts "x - removeItem"
      puts "c - showAll"
      puts "v - checkedItem"
      puts "b - removeAll"
      puts "n - exit"
      input = gets.chomp

      case input
      when "z"
        puts "type tour item"
        item = gets.chomp
        @list.addItem(item)
        puts "----- #{item} add correctly"
      when "x"
        puts "are you sure? it will be delete forever"
        puts "type s/n"
        input = gets.chomp
        if input == "s"
          puts "type the index of item to delete"
          indItem = gets.chomp
          item = @list.removeItem(indItem.to_i)
          puts "#{item.text} was delete correctly"
        else
          @list.showAll
        end
      when "c"
        @list.showAll
      when "v"
        puts "type the index of selected item"
        indItem = gets.chomp
        item = @list.checkedItem(indItem.to_i)
          puts "#{item.text} was checked correctly"
        @list.showAll
      when "b"
        puts "are you sure? they'll be delete forever"
        puts "type s/n"
        input = gets.chomp
        if input == "s"
          @list.removeAll
          puts "items deleted"
        else
          @list.showAll
        end
      when "n"
        break
      else
        puts "key invalid"
      end
    end
    puts "adios y gracias"
  end
end

appRunning = App.new
appRunning.run
