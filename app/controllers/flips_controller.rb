class FlipsController < ApplicationController
  def index
    @text = params[:text] || "Hello world!"
  end

  def create
    @text = TextTransform.flip(params[:text])
    render :index
  end
end