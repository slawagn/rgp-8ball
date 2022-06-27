greetings, answers =
  %w[greetings answers].map do |filename|
    File.readlines(
      File.join(
        __dir__,
        'data',
        "#{filename}.txt"
      ),
      chomp: true
    ).reject(&:empty?)
  end

delay = rand(1.5..2.5)

puts greetings.sample

sleep(delay)

puts
puts answers.sample
