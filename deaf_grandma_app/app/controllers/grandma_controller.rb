class GrandmaController < ApplicationController

  def index
  end

  def create
    granny = GrandmaResponse.new(params[:input])
    redirect_to root_with_response_path(granny.response)
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
