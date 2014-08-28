class GrandmaController < ApplicationController
  TOO_LOUD = "Shut the fuck up sonny!"
  TOO_QUIET = "Speak the shit up!"

  def index
  end

  def create
    redirect_to root_with_response_path(input_upcased? ? TOO_LOUD : TOO_QUIET)
  end

  def index_with_response
    @response_text = params[:input]
    render :index
  end

  private

    def input_upcased?
      params[:input] == params[:input].upcase
    end

end

class GrandmaResponse
  def initialize(params = {})
    @response = params
  end




end
#make a grandmaresponse class... grandmaresponse spec
#initialize it with params[:input]
