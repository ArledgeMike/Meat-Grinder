class MeatGrinder
  
def initialize(meats, sausage)

  text= File.open("#{meats}").read
  @new_file = File.new("#{sausage}-output.txt", "w")
  
  @list_array = []
  
  text.each_line do |line|
    
	if line[0] == '['
      while line.include?('[')
        start = line.index('[')
        stop = line.index(']',start)
        line[start..stop] = '' if stop
      end
    end
	
    if line[0] == '<'
      @first = line.index('<')
      @last = line.index('>', @first)
      @tag = line[@first..@last]
      
      case @tag
      when "<img>"
        empty_list_array
        line = line[@first..@last]
        @new_file.puts("#{line.insert(line.length-1, '/')}\n")
      when "*"
        @open = "<li>"
        @close = "</li>"
        line[0..1] = @open
  	    @new_file.puts("#{line.insert(line.length-1, @close)}")
      when "<li>"
        if @list_array.empty?
          @list_array[0]= "<ul>"
          puts "added first ul"
        end
        @close_tag = @tag.insert(1, '/')
        @list_array << "#{line.rstrip << @close_tag}\n"
      else
        empty_list_array
        @close_tag = @tag.insert(1, '/')
		    @new_file.puts("#{line.rstrip << @close_tag}\n")
      end
         
    end
  
  end
  @new_file.close
end

def empty_list_array
  if @list_array.count > 0
    @list_array << "</ul>"
    @list_array.each do |node|
     @new_file.puts("#{node}")
    end
    @list_array = []
  end
end

end

puts "What file do you want to convert"
text = gets.chomp

puts "What is the name of the new document"
new_doc = gets.chomp


@m = MeatGrinder.new(text, new_doc)
