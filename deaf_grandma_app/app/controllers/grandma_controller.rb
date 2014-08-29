class GrandmaController < ApplicationController

  def index
  end

  def create
    respond_to do |format|
        format.json { render json: {:grandma_response => GrandmaResponse.new(params[:input]).response} }
    end

    # redirect_to root_with_response_path(GrandmaResponse.new(params[:input]).response)
  end

  def index_with_response
    @response_text = params[:input]
    render :index
  end




end

class GrandmaResponse
  TOO_LOUD = "Shut the fuck up sonny!"
  TOO_QUIET = "Speak the shit up!"

  def initialize(params = {})
    @user_input = params
  end

  def response
     input_upcased? ? TOO_LOUD : TOO_QUIET
  end

  private

    def input_upcased?
      @user_input == @user_input.upcase
    end

end
