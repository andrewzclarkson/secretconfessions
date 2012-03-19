class CallingController < ApplicationController

def hello
  post '/calling/index.json' do

    tropo = Tropo::Generator.new do
      say 'Hello World! Hello World! Hello World!'
    end
    tropo.response

  end
  
  

  # post '/calling/index.json' do
  # 
  #     v = Tropo::Generator.parse request.env["rack.input"].read
  #     t = Tropo::Generator.new
  # 
  #     if v[:session][:initial_text].to_i > 0
  #         t.ask :name => 'initial_text', :choices => { :value => "[ANY]"}
  #         session[:areacode] = v[:session][:initial_text]        
  #     else
  #         t.say "Welcome to Secret Confessions.  You have 30 seconds to leave your dirt.  Press any button or hang up when you are done."
  #     end
  #     # t.on :event => 'continue', :next => '/calling/done.json'
  #     t.hangup
  #     t.response
  # end
  
  ####################### AZC
  # answer
  # 
  # ## record a message.  Play the beep, caller must speak within 10 seconds.  
  # ## Allow 7 seconds of silence and up to 30 seconds of recording.
  # 
  # result = record "Hello.  Thanks for calling.  Leave your message at the beep.",
  #           { :beep => true, :timeout => 10, :silenceTimeout => 7, :maxTime => 30 }
  ####################### AZC  				
    				
  # post '/calling/done.json' do
  # 
  #     t = Tropo::Generator.new
  # 
  #     v = Tropo::Generator.parse request.env["rack.input"].read
  # 
  #     session[:year] = v[:result][:actions][:year][:value].gsub(" ","") unless session[:year]
  #         today = Date.today
  #         agecalc = today.year - session[:year].to_i
  #         lowdate = agecalc - 1
  #         highdate = agecalc + 1
  #         
  #         t.say "Your age is between #{lowdate} and #{highdate}", {:name => 'test'}
  #         t.hangup
  #         
  #         t.response
  # end
end
