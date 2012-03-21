class CallingController < ApplicationController

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

#####
# 2012-03-20T00:14:55+00:00 app[web.1]:   Parameters: {"session"=>{"id"=>"5b155104c288df97939bcb5fde5fcba2", "accountId"=>"119137", "timestamp"=>"2012-03-20T00:14:54.926Z", "userType"=>"HUMAN", "initialText"=>nil, "callId"=>"5ec84c1e3bed44e06f234d32e0708786", "to"=>{"id"=>"4158898608", "name"=>"+14158898608", "channel"=>"VOICE", "network"=>"SIP"}, "from"=>{"id"=>"8175848815", "name"=>"+18175848815", "channel"=>"VOICE", "network"=>"SIP"}, "headers"=>{"x-sbc-contact"=>"<sip:+18175848815@192.168.37.68:5060>", "Content-Length"=>"434", "x-sbc-remote-party-id"=>"<sip:+18175848815@192.168.37.68:5060>;privacy=off;screen=no", "x-sbc-call-id"=>"1745752668_104991808@192.168.37.68", "x-sid"=>"d79a85af2e9e30d23ee28cc4acdb7bb7", "CSeq"=>"1 INVITE", "Via"=>"SIP/2.0/UDP 10.6.63.185:5060;rport=5060;branch=z9hG4bK-12d366-4989c939-43c38d7a-2aaabfa80e78", "x-sbc-accept"=>"application/sdp", "x-sbc-to"=>"<sip:+14158898608@67.231.8.93>", "From"=>"<sip:8175848815@10.6.63.185:5060>;tag=2aaac027ee98-0-13c4-6009-12d366-5dc89815-12d366", "x-sbc-from"=>"<sip:+18175848815@192.
# 2012-03-20T00:14:55+00:00 app[web.1]: 168.37.68;isup-oli=61>;tag=gK0e69691a", "x-sbc-allow"=>"BYE", "x-voxeo-sbc-name"=>"10.6.63.185", "x-accountid"=>"2", "Contact"=>"<sip:8175848815@10.6.63.185:5060>", "To"=>"<sip:4158898608@ppid410.romeo.orl.tropo.com>", "x-voxeo-sbc"=>"true", "User-Agent"=>"VCS11.5.55126.0", "x-voxeo-to"=>"<sip:+14158898608@67.231.8.93>", "x-appid"=>"24601", "x-sbc-content-disposition"=>"session;handling=required", "x-sbc-request-uri"=>"sip:+14158898608@sip.tropo.com", "Max-Forwards"=>"70", "x-sbc-max-forwards"=>"206", "x-voxeo-sbc-session-id"=>"d79a85af2e9e30d23ee28cc4acdb7bb7", "x-sbc-record-route"=>"<sip:67.231.8.195;lr=on;ftag=gK0e69691a>,<sip:67.231.8.93;lr=on;ftag=gK0e69691a>", "Call-ID"=>"1332202494931-15af4cb0-b00704e0-00068df3@10.6.63.185", "Content-Type"=>"application/sdp"}}, "calling"=>{"session"=>{"id"=>"5b155104c288df97939bcb5fde5fcba2", "accountId"=>"119137", "timestamp"=>"2012-03-20T00:14:54.926Z", "userType"=>"HUMAN", "initialText"=>nil, "callId"=>"5ec84c1e3bed44e06f234d32e0708786", "to"=>{"id"=>"4158898608", 
# 2012-03-20T00:14:55+00:00 app[web.1]: "name"=>"+14158898608", "channel"=>"VOICE", "network"=>"SIP"}, "from"=>{"id"=>"8175848815", "name"=>"+18175848815", "channel"=>"VOICE", "network"=>"SIP"}, "headers"=>{"x-sbc-contact"=>"<sip:+18175848815@192.168.37.68:5060>", "Content-Length"=>"434", "x-sbc-remote-party-id"=>"<sip:+18175848815@192.168.37.68:5060>;privacy=off;screen=no", "x-sbc-call-id"=>"1745752668_104991808@192.168.37.68", "x-sid"=>"d79a85af2e9e30d23ee28cc4acdb7bb7", "CSeq"=>"1 INVITE", "Via"=>"SIP/2.0/UDP 10.6.63.185:5060;rport=5060;branch=z9hG4bK-12d366-4989c939-43c38d7a-2aaabfa80e78", "x-sbc-accept"=>"application/sdp", "x-sbc-to"=>"<sip:+14158898608@67.231.8.93>", "From"=>"<sip:8175848815@10.6.63.185:5060>;tag=2aaac027ee98-0-13c4-6009-12d366-5dc89815-12d366", "x-sbc-from"=>"<sip:+18175848815@192.168.37.68;isup-oli=61>;tag=gK0e69691a", "x-sbc-allow"=>"BYE", "x-voxeo-sbc-name"=>"10.6.63.185", "x-accountid"=>"2", "Contact"=>"<sip:8175848815@10.6.63.185:5060>", "To"=>"<sip:4158898608@ppid410.romeo.orl.tropo.com>", "x-voxeo-sbc"=>"true", "User
# 2012-03-20T00:14:55+00:00 app[web.1]: WARNING: Can't verify CSRF token authenticity
# 2012-03-20T00:14:55+00:00 app[web.1]: -Agent"=>"VCS11.5.55126.0", "x-voxeo-to"=>"<sip:+14158898608@67.231.8.93>", "x-appid"=>"24601", "x-sbc-content-disposition"=>"session;handling=required", "x-sbc-request-uri"=>"sip:+14158898608@sip.tropo.com", "Max-Forwards"=>"70", "x-sbc-max-forwards"=>"206", "x-voxeo-sbc-session-id"=>"d79a85af2e9e30d23ee28cc4acdb7bb7", "x-sbc-record-route"=>"<sip:67.231.8.195;lr=on;ftag=gK0e69691a>,<sip:67.231.8.93;lr=on;ftag=gK0e69691a>", "Call-ID"=>"1332202494931-15af4cb0-b00704e0-00068df3@10.6.63.185", "Content-Type"=>"application/sdp"}}, "action"=>"hello", "controller"=>"calling"}}
#####
end
