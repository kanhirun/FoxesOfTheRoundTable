class FoxesOfTheRoundTable
  def self.minimalDifferences(heights)
    foxArray      = createFoxes(heights)
    globalMinDiff = Float::INFINITY
    results       = []

    (foxArray.permutation).each do |foxSample|
      foxRoundTable      = roundTable(foxSample)
      localMaxHeightDiff = maxHeightDiff(foxRoundTable.map(&:height))

      if (localMaxHeightDiff < globalMinDiff)
        globalMinDiff = localMaxHeightDiff
        results       = foxSample
      end
    end

    globalMinDiff
  end

  def self.createFoxes(heights)
    heights.map.each_with_index do |height, id|
      Fox.new(id, height)
    end
  end

  def self.roundTable(foxes)
    results = (foxes.dup).push(foxes[0])

    results
  end

  def self.maxHeightDiff(heights)
    heightDiffs = heightDifferences(heights)

    if heightDiffs
      heightDiffs.max
    end
  end

  def self.heightDifferences(heights)
    if heights.empty?
      return nil
    end

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
