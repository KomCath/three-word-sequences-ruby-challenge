# frozen_string_literal: true

# Builder that counts and sorts
class WordSequenceBuilder
  # attr_accessor :file

  def initialize(text:)
    @text = text
    @sequences = {}
    @displayer = ''
  end

  def build
    sequence_builder(data_setup)
    displayer_builder
  end

  private

  def data_setup
    @text.gsub(/([^A-Za-z\s])/, ' ').downcase.split(' ')
  end

  def sequence_builder(data)
    data.each_cons(3).each do |sequence|
      built_sequence = sequence.join(' ')
      if @sequences.key?(built_sequence)
        @sequences[built_sequence] += 1
      else
        @sequences[built_sequence] = 0
      end
    end
  end

  def displayer_builder
    @sequences.sort_by { |_k, v| v }.reverse.first(5).each do |sequence, count|
      @displayer += "#{sequence} - #{count}\n"
    end
    @displayer
  end
end
