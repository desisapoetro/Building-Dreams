class Dreams
  def initialize
    @dreams = []
  end

  def build
    puts "It's time to start building dreams..."
    while true
      puts "Please enter a dream or type 'done' to exit"
      dream = gets.chomp
      if dream != 'done'
        @dreams.push(dream)
      else
        break
      end
    end
    puts @dreams
    construct_dreams
  end

  def construct_dreams
    puts "Time to construct your dreams"
    @dreams.each do |dream|
      puts "Constructing dream: #{dream}"
      # some code to construct dream would go here
      sleep 0.5
      puts "Dream constructed successfully!"
    end
    puts "All dreams constructed!"
  end
end

dreams = Dreams.new
dreams.build