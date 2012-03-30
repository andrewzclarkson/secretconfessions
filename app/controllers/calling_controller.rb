class CallingController < ApplicationController    
  # skip_before_filter :authenticate_user!
  # Receive and process a request from Tropo;
  # Route to this method => match 'calling/incomingCall' => 'calling#incomingCall', :via => [:get, :post]
  def incomingCall
    
    @confession = Confession.create(:areacode => params[:session][:from][:id])
   
    # Generate Tropo response
    
    # t = Tropo::Generator.new
    #    
    #    @superObject = params[:session].to_json
    #    puts "SUPEROBJECT: Message"
    #    puts @superObject
    #    puts "SUPEROBJECT: Message"
    #    
    #    t.say(:value => "Could this actually work??!")
    #    puts "tropo_message: Message"
    #    tropo_message = t.response
    #    puts tropo_message
    #    puts "tropo_message: Message"
    #    puts "SUPEROB: Message"
    #    @superOb = tropo_message
    #    puts @superOb
    #    puts "SUPEROB: Message"
    #    puts "LAST_FUCKING_DEBUG_: Message"
    #    
    #    respond_to do |format|
    #      format.html  { redirect_to root_path }
    #      format.json  { render :json => tropo_message }
    # end
  end
  
  def index
  end
end
