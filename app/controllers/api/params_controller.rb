class Api::ParamsController < ApplicationController
  def name
    @name = params[:name].upcase
    # if the name begins with A, add a message
    # if @name.start_with?("A")
    if @name[0] == "A"
      @name = "Your name begins with A"
    end
    render 'show_name.json.jbuilder'
  end
end
