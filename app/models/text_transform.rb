class TextTransform
  attr_accessor :content

  def initialize(content)
    @content = content
  end

  def transform
    content.reverse
  end
end
