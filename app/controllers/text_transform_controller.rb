class TextTransformController < ApplicationController
  def index
  end

  def transform
    if params[:widen]
      transformed_text = TextTransform.new(params[:content]).widen
    elsif params[:narrow]
      transformed_text = TextTransform.new(params[:content]).narrow
    elsif params[:flip]
      transformed_text = TextTransform.new(params[:content]).flip
    end

    render json: transformed_text
  end
end
