require 'spec_helper'


describe FoxesOfTheRoundTable do
  describe '.minimalDifferences(input)' do
    # input assumption:
    # int[] where i = fox's number, and x[i] = fox's height (unitless).

    it 'returns [0, 3, 1, 2] when heights are [1, 99, 50, 50]' do
      input    = [10, 30, 20, 40]
      expected = [0, 3, 1, 2]

      results = FoxesOfTheRoundTable.minimalDifferences(input)

      expect(results).to eql expected
    end

    it 'returns [0, 1, 2] when heights are [123, 456, 789]' do
      heights  = [123, 456, 789]
      expected = [0, 1, 2]

      results = FoxesOfTheRoundTable.minimalDifferences(heights)

      expect(results).to eql expected
    end
  end


  describe '.maxHeightDiff(input)' do
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


  describe '.heightDifferences(input)' do
    it 'returns [10, 10, 20, 30, 30] when given [30, 20, 10, 30, 60, 90]' do
      input    = [30, 20, 10, 30, 60, 90]
      expected = [10, 10, 20, 30, 30]

      results = FoxesOfTheRoundTable.heightDifferences(input)

      expect(results).to eql expected
    end
  end


  describe '.positionsFromHeights(heights)' do
    it 'returns [0, 2, 1, 4]' do
      map   = { 0 => 10,   # "Fox 0" has a height of 10,
                1 => 20,   # "Fox 1" has a height of 20,
                2 => 30,   # ...
                4 => 40 }  # "Fox 4" has a height of 40.

      input    = [10, 30, 20, 40]
      expected = [0, 2, 1, 4]

      results = FoxesOfTheRoundTable.positionsFromHeights(input, map)

      expect(results).to eql expected
    end

    it 'returns [0, 2, 1, 4] when given duplicate heights' do
      map   = { 0 => 10,   # "Fox 0" has a height of 10,
                1 => 20,   # "Fox 1" has a height of 20,
                2 => 20,   # ...
                4 => 40 }  # "Fox 4" has a height of 40.
    end
  end
end
