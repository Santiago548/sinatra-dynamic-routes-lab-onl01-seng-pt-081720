require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}.reverse"
  end

  get '.square/:number' do

  end

  get '/say/:number/:phrase' do

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @words = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
  "#{@words}.join()"
  end

  get '/:operation/:number1/:number2' do

  end
end
