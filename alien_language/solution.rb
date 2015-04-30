#!/usr/bin/ruby
#
@input = "A-small-practice.in"

@L, @D, @N = File.foreach(@input).first.chomp.split(" ")

@L = @L.to_i
@D = @D.to_i
@N = @N.to_i


def output x, k 
  output = File.open("output_small.txt", "a")
  output.puts "Case ##{x}: #{k}"
  output.close   
end

# D is the number of words in the language
# L is the length of every word in the language

@words = []

IO.readlines(@input)[1..@D].each do |line| 
  #print line
  @words << line.chomp
end

def algo line
  if line.length == @L && (@words.include? line)
   output line.length, 1
  else
    #line.gsub 
    #line.delete!("(")
    #line.delete!(")")
    p line
  end
end

IO.readlines(@input).drop(1 + @D ).each do |line|
  algo line.chomp
end
