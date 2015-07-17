class Api::TensesController < ApplicationController

  def index
    @verb = Verb.find(params[:verb_id])
    @tense = @verb.tenses.all
    render json: @tense
  end

  def show
    @verb = Verb.find(params[:verb_id])
    @tense = @verb.tenses.find(params[:id])
    render json: @tense
  end
  
  def create
    @verb = Verb.find(params[:verb_id])
    @tense = @verb.tenses.new(tense_params)
    if @tense.save
      render text: "Successfully added"
    else
      render text: "There was a problem adding to the database"
    end
  end

  def update
    @verb = Verb.find(params[:verb_id])
    @tense = @verb.tenses.find(params[:id])
    if @tense.update_attributes(tense_params)
      render text: "Successfully updated"
    else
      render text: "There was a problem updating the database"
    end
  end

  def destroy
    @verb = Verb.find(params[:verb_id])
    @tense = @verb.tenses.find(params[:id])
    if @tense.destroy(tense_params)
      render text: "Successfully deleted"
    else
      render text: "There was a problem deleting from the database"
    end
  end
  
  def tense_params
    params.permit(:id)
    params.permit(:verb_id)
    params.permit(:name, :voice, :mood, :abbrv)
    real_params = {name: params[:name],
                   voice: params[:voice],
                   mood: params[:mood],
                   abbrv: params[:abbrv],
                   verb_id: params[:verb_id]}
  end
end
