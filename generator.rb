
def parse_html(doc)
  text= File.open("#{doc}").read
  puts "What is the name of the new document"
  @new_doc = gets.chomp
  @new_file = File.new("#{@new_doc}-output.txt", "w")

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
      @close_tag = line[@first..@last]
      if @close_tag == "<img>"
        line= line[@first..@last]
	   # print "#{line.insert(line.length-1, '/')}\n"
        @new_file.puts("#{line.insert(line.length-1, '/')}\n")     
	  else
        @close_tag.insert(1, '/')
      # print "#{line.rstrip << @close_tag}\n"
		@new_file.puts("#{line.rstrip << @close_tag}\n")
      end
    end
    
	if line[0] == '*'
      @open = "<li>"
      @close = "</li>"
      line[0..1] = @open
     # print "#{line.insert(line.length-1, @close)}"
	  @new_file.puts("#{line.insert(line.length-1, @close)}")
    end
  
  end
  @new_file.close
end

puts "What file do you want to convert"
text = gets.chomp
parse_html(text)
