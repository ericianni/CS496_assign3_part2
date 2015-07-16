class VerbsController < ApplicationController
  def home
  end

  def show
  end

  def new
    @verb = Verb.new
  end

  def create
    @verb = Verb.new(verb_params)
    if @verb.save
      redirect_to @verb
    else
      render 'new'
    end
  end

  private
  def verb_params
    params.require(:verb).permit(:first,:second,:third,:fourth)
  end
  end
