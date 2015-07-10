class Fox
  attr_accessor :id, :height

  def initialize(id, height)
    @id     = id
    @height = height
  end

  def to_s
    "Fox id: #{id}, height: #{height}"
  end
end
