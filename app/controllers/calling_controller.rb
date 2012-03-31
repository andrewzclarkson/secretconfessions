class CallingController < ApplicationController    
  # skip_before_filter :authenticate_user!
  # Receive and process a request from Tropo;
  # Route to this method => match 'calling/incomingCall' => 'calling#incomingCall', :via => [:get, :post]
  def incomingCall
    
    incomingPhoneNumber = params[:session][:from][:id]
    
    incomingAreaCode = incomingPhoneNumber[0..-8]
    
    @confession = Confession.create(:areacode => incomingAreaCode)
    
    # Generate Tropo response
     
    t = Tropo::Generator.new
      
    t.say(:value => "Welcome to Secret Confessions. You have 30 seconds to make your confession and the recording will be posted anonymously to our site. Go for it.")
      
    render :text => t.response
   end
end
