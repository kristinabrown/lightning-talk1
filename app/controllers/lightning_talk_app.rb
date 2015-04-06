class LightningTalkApp < Sinatra::Base
  
  get "/" do
    erb :dashboard
  end
  
  get "/contents" do
    erb :index
  end
  
  get "/contents/intro" do
    erb :intro
  end
  
  get "/contents/intro/customer-who" do
    erb :know_your_customer
  end
  
  get "/contents/intro/customer-who/communication" do
    erb :communication
  end
  
  get "/contents/intro/customer-who/communication/dont-say-no" do
    erb :dont_say_no
  end
  
  get "/contents/intro/customer-who/communication/dont-say-no/take-initiative" do
    erb :take_initiative
  end
  
  get "/contents/intro/customer-who/communication/dont-say-no/take-initiative/conclusion" do
    erb :conclusion
  end
end