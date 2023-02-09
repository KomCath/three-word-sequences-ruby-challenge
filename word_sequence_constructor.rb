# frozen_string_literal: true

# Constructor that
class WordSequenceConstructor
  # attr_accessor :file

  def initialize(string:)
    @string = string
    @sequences = {}
  end

  def call
    sequence_builder(data_setup)
    order_displayer
  end

  private

  def data_setup
    @string.gsub(/([^A-Za-z\s])/, ' ').downcase.split(' ')
  end

  def sequence_builder(data)
    data.each_cons(3).to_a.each do |sequence|
      if @sequences.include?(sequence.join(' '))
        @sequences[sequence.join(' ')] += 1
      else
        @sequences[sequence.join(' ')] = 0
      end
    end
  end

  def order_displayer
    @sequences.sort_by { |_k, v| v }.reverse.first(100).each do |key, value|
      puts "#{key} - #{value}"
    end
  end
end
