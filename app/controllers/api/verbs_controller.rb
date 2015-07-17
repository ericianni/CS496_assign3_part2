class Api::VerbsController < ApplicationController

  def index
    @verb = Verb.all
    render json: @verb
  end

  def show
    @verb = Verb.find(params[:id])
    respond_with @verb
  end

  def create
    @verb = Verb.new(verb_params)
    if @verb.save
      render json:  "Successfully added"
    else
      render text: "There was a problem adding to the databse"
    end
  end

  def destroy
    @verb = Verb.find(params[:id])
    if @verb.destroy
      render text:  "Successfully Removed"
    else
      render text:  "There was a problem deleting from the database"
    end
  end

  def update
    @verb = Verb.find(params[:id])
    if @verb.update_attributes(verb_params)
      render text: "Successfully updated"
    else
      render text: "There was a problem updating the database"
    end
  end

  def show
    @verb = Verb.find(params[:id])
    render json: @verb
  end
  
  def verb_params
    params.permit(:first, :second, :third, :fourth)
  end

end

