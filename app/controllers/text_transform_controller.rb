class TextTransformController < ApplicationController
  def index
  end

  def widen
    transformed_text = TextTransform.new(params[:content]).transform

    render json: transformed_text
  end
end
