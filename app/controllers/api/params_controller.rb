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

  def guess
    # inputs
    # number that the user guesses
    # outputs
    # if they got the answer correct
    user_guess = params[:number].to_i
    # p params[:number1] # nil
    # p params[:number1].to_i
    if user_guess == 36
      @message = "You got it right"
    elsif user_guess > 36
      @message = "You guessed too high, guess lower net time"
    elsif user_guess < 36
      @message = "You guessed too low, guess higher net time"
    end
    render "my_guess.json.jbuilder"
  end
end
