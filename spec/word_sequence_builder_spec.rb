# frozen_string_literal: true

require './word_sequence_builder'
require 'pry'

RSpec.describe WordSequenceBuilder do
  subject(:builder) { described_class.new(text:) }
  let(:text) { 'bananas 8! are best' }

  describe '.initialize' do
    it 'requires a text argument' do
      expect { described_class.new }.to raise_error ArgumentError
    end
  end

# it removes special characters, and numbers
# counts the numbers of sequences found
# displays descending order
# 100 items
  describe '#build' do
    let(:expected_output) { "bananas are best - 0\n" }

    it 'builds the expected output successfully' do
      expect(builder.build).to eq(expected_output)
    end

    context 'when text includes unecessary data'
      it 'it removes special characters' do
        expect(service.call).to eq(expected_output)
      end

      it 'it removes numbers' do
        expect(service.call).to eq(expected_output)
      end
    end
    # it 'reads the file successfully' do
    #   expect(service.call).to eq(expected_output)
    # end

  #   before do
  #     allow(File).to receive(:read).with(extension).and_return(expected_output)
  #   end

  #   context 'when file type is not txt' do
  #     let(:extension) { 'foo.csv' }

  #     it 'raise an error for incorrect file type' do
  #       expect { service.call }.to raise_error(FileHandlerService::IncorrectFileTypeError)
  #     end
  #   end
  end
end
