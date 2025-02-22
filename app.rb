require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'}"
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      num_add = (@num1 + @num2).to_i
      "#{num_add}"
    elsif params[:operation] == "subtract"
      num_sub = @num1 - @num2
      "#{num_sub.to_s}"
    elsif params[:operation] == "multiply"
      num_multi = @num1 * @num2
      "#{num_multi.to_s}"
    elsif params[:operation] == "divide"
      num_div = @num1 / @num2
      "#{num_div.to_s}"
    end
  end

end