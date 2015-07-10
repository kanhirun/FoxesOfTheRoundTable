require 'spec_helper'


describe FoxesOfTheRoundTable do
  describe '.minimalDifferences(input)' do
    it 'returns [0, 3, 1, 2] when heights are [1, 99, 50, 50]' do
      input    = [10, 30, 20, 40]
      expected = 20

      results = FoxesOfTheRoundTable.minimalDifferences(input)

      expect(results).to eql expected
    end

    it 'returns [0, 1, 2] when heights are [123, 456, 789]' do
      heights  = [123, 456, 789]
      expected = 333

      results = FoxesOfTheRoundTable.minimalDifferences(heights)

      expect(results).to eql expected
    end

    it 'returns 20 as the minimal height difference from {10, 30, 20}' do
      heights  = [10, 30, 20]
      expected = 20

      results = FoxesOfTheRoundTable.minimalDifferences(heights)

      expect(results).to eql expected
    end

    it 'returns 20 as the minimal height difference from {10, 30, 20, 40}' do
      heights  = [10, 30, 20, 40]
      expected = 20

      results = FoxesOfTheRoundTable.minimalDifferences(heights)

      expect(results).to eql(expected)
    end
  end


  describe '.maxHeightDiff(heights)' do
    it 'returns 10 when given [10, 10, 20, 30, 30]' do
      input    = [10, 10, 20, 30, 30]
      expected = 10

      results = FoxesOfTheRoundTable.maxHeightDiff(input)

      expect(results).to eql expected
    end

    it 'returns nil when given empty array' do
      input = []

      results = FoxesOfTheRoundTable.maxHeightDiff(input)

      expect(results).to be_nil
    end

    it 'returns 0 when two adjacent heights are equal' do
      input    = [10, 10]
      expected = 0

      results = FoxesOfTheRoundTable.maxHeightDiff(input)

      expect(results).to eql expected
    end
  end


  describe '.heightDifferences(heights)' do
    it 'returns [10, 10, 20, 30, 30] when given [30, 20, 10, 30, 60, 90]' do
      heights  = [30, 20, 10, 30, 60, 90]
      expected = [10, 10, 20, 30, 30]

      results = FoxesOfTheRoundTable.heightDifferences(heights)

      expect(results).to eql expected
    end

    it 'returns nil when given an empty array' do
      heights = []

      results = FoxesOfTheRoundTable.heightDifferences(heights)

      expect(results).to be_nil
    end
  end
end
