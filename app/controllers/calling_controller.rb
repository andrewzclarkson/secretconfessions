class CallingController < ApplicationController    
  # skip_before_filter :authenticate_user!
  # Receive and process a request from Tropo;
  # Route to this method => match 'calling/incomingCall' => 'calling#incomingCall', :via => [:get, :post]
  def incomingCall
    
    # Generate Tropo response
    t = Tropo::Generator.new
    t.say(:value => "Could this actually work??!")
    tropo_message = t.response
    
    respond_to do |format|
      format.html  { redirect_to root_path }
      format.json  { render :json => tropo_message }
    end
  end
end
