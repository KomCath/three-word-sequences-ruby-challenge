# frozen_string_literal: true

# require 'pry'
require_relative '../src/word_sequence_builder'

RSpec.describe WordSequenceBuilder do
  subject(:builder) { described_class.new(text:) }
  let(:text) { 'bananas are best ' }

  describe '.initialize' do
    it 'requires a text argument' do
      expect { described_class.new }.to raise_error ArgumentError
    end
  end

  describe '#build' do
    shared_examples_for 'returns the expected output' do
      it 'successfully' do
        expect(builder.build).to eq(expected_output)
      end
    end

    let(:expected_output) { "bananas are best - 1\n" }

    it_behaves_like 'returns the expected output'

    context 'when the text includes special characters' do
      let(:text) { 'bananas ? are, best' }

      it_behaves_like 'returns the expected output'
    end

    context 'when the text includes numbers' do
      let(:text) { 'bananas 34 are6 best' }

      it_behaves_like 'returns the expected output'
    end
  end
end
