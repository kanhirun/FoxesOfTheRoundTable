class FoxesOfTheRoundTable
  def self.minimalDifferences(heights)
    positions     = []
    globalMinDiff = Float::INFINITY

    positionMap = heights.map.each_with_index do |height, ind|
      [ind, height]
    end.to_h

    (heights.permutation).each do |permutation|
      _heights = round_table(heights)
      localMaxDiff = maxHeightDiff(_heights)

      if localMaxDiff < globalMinDiff
        globalMinDiff = localMaxDiff
        positions     = positionsFromHeights(permutation, positionMap)
      end
    end

    return positions
  end

  def self.round_table(foxes)
    # To be a round table, we repeat the first element at the end.
    results = foxes.push(foxes[0])

    results
  end

  def self.positionsFromHeights(heights, map)
    results = heights.map do |height|
      map.key(height)
    end
  end

  def self.maxHeightDiff(heights)
    heightDiffs = heightDifferences(heights)

    heightDiffs.max
  end

  def self.heightDifferences(heights)
    results = []
    i       = 0
    n       = heights.length-1

    while (i < n)
      heightDiff = (heights[i] - heights[i+1]).abs

      results << heightDiff

      i += 1
    end

    results
  end
end
