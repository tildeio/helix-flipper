class TextTransformController < ApplicationController
  def index
  end

  def transform
    if params[:widen]
      transformed_text = TextTransform.new.widen(params[:content])
    elsif params[:narrow]
      transformed_text = TextTransform.new.narrow(params[:content])
    elsif params[:flip]
      transformed_text = TextTransform.new.flip(params[:content])
    end

    render json: transformed_text
  end
end
