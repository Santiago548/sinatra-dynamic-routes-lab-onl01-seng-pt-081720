require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    loop = ''
    params[:number].to_i.times do
      loop += params[:phrase]
    end
    loop
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if "add"
      (num1+ num2).to_s
    elsif "subtract"
      (num1 - num2).to_s
    elsif "multiply"
      (num1 * num2).to_s
    elsif "divide"
      (num1 / num2).to_s
    else
      "I dont know"
    end
  end
end
