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
    
    # t.say(:value => "Welcome to Secret Confessions. You have 30 seconds to make your confession and the recording will be posted anonymously to our site.  Just hang up when you are finished.")
    t.record({ :name => 'recording',
                :timeout => 10,
                :maxTime => 30,
                :beep => true,
                :recordFormat => "audio/mp3",
                :url => "ftp://andrewzclarkson.com/confessions/filename.mp3",
                :username => "tropo@andrewzclarkson.com",
                :password => "SamplePassword1"
                }) do
                     say :value => 'Now, go for it.'
                 end
               
    render :text => t.response
   end
end
