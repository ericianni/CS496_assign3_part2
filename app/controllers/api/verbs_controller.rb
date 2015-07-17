class Api::VerbsController < ApplicationController

  def index
    @verb = Verb.all
    render :json => @verb
  end

  def show
    @verb = Verb.find(params[:id])
    render :json => @verb
  end

  

end

