class TensesController < ApplicationController
  def new
    @verb = Verb.find(params[:verb_id])
    @tense = @verb.tenses.new
  end

  def create
    @verb = Verb.find(tense_params[:verb_id])
    @tense = @verb.tenses.new(tense_params)
    if @tense.save
      redirect_to @verb
    else
      render 'new'
    end
  end

  def tense_params
    params.require(:tense).permit(:name, :abbrv, :voice, :mood, :verb_id)
  end
end
