class CallingController < ApplicationController    
  # skip_before_filter :authenticate_user!
  # Receive and process a request from Tropo;
  # Route to this method => match 'calling/incomingCall' => 'calling#incomingCall', :via => [:get, :post]
  def incomingCall
    
    areacode_regex = /^\d\d\d/
    
    incomingPhoneNumber = params[:session][:from][:id]
    puts incomingPhoneNumber
    
    incomingAreaCode = incomingPhoneNumber[0..-8]
    puts incomingAreaCode
    
    @confession = Confession.create(:areacode => incomingAreaCode)
    
    # Generate Tropo response
     
    t = Tropo::Generator.new
      
    t.say(:value => "I am the king of the world, Scott.  I am the internet and I have all of your information, forever.")
      
    render :text => t.response
   end
end
