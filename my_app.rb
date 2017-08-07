require "sinatra"
require "pry"
require "sendgrid-ruby"
include SendGrid

  get "/" do
    erb :index
  end

  get "/team" do
    erb :team
  end

  get "/product" do
    erb :product
  end

  get "/contact" do
    erb :contact
  end

 post "/submit" do
   @from = params[:from]
   @subject = params[:subject]
   @content = params[:content]
   binding.pry
   from = Email.new(email: @from)
   to = Email.new(email: 'jeremyleitmeyer@gmail.com')
   subject = @subject
   content = Content.new(type: 'text/plain', value: @content)
   mail = Mail.new(from, subject, to, content)

   sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
   response = sg.client.mail._('send').post(request_body: mail.to_json)
   puts response.status_code
   puts response.body
   puts response.headers
   redirect "/"
  end
