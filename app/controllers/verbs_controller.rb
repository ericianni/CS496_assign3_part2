class VerbsController < ApplicationController

  def all
    @verb = Verb.all
  end
  
  def home
  end

  def edit
    @verb = Verb.find(params[:id])
  end

  def update
    @verb = Verb.find(params[:id])
    if @verb.update_attributes(verb_params)
      redirect_to @verb
    else
      render 'edit'
    end
  end
  
  def show
    @verb = Verb.find(params[:id])
#    @tense = @verb.tenses.new
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

  def destroy
    Verb.find(params[:id]).destroy
    redirect_to all_path
  end
  private
  def verb_params
    params.require(:verb).permit(:first,:second,:third,:fourth)
  end
end
  
