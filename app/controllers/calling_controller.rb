class CallingController < ApplicationController    
  
  def incomingCall  
    # r = Twilio::REST::Response.new
    
    render :action => 'response.xml', :layout => false
  end
  
  def recording
    puts "I am in RECORDING!!!"
    
    incomingPhoneNumber = params[:From]          
    incomingAreaCode = incomingPhoneNumber.slice(2,3)
    recording_url = params[:RecordingUrl].to_s
    
    @confession.create!(:area_code => incomingAreaCode, :recording_url => recording_url)
    
    render :xml => "<success/>"
  end
end
