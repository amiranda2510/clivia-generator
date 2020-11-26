module Scores
  def save(data)
    # write to file the scores data
    puts "Type the name to assign to the score: "
    print ">"
    name = gets.chomp
    p @filename
    File.open(@filename, "r+") do |file|
      result = JSON.parse(file.read) unless file.size.zero?
      result = [] if result.nil?
      result << { name: name, score: data }
      file.puts(JSON.dump(result))
    end
  end
end
