require 'sinatra'  # Load Sinatra framework

# Route for homepage
get '/' do
  'Hello, World!'  # Displays plain text
end

# Route for form submission
post '/greet' do
  name = params[:name]  # Get name from form input
  "Hello, #{name}! Welcome to Sinatra!"  # Display greeting
end

# Optional: Simple form page
get '/form' do
  <<~HTML
    <form action="/greet" method="post">
      <label>Enter your name: </label>
      <input type="text" name="name">
      <input type="submit" value="Submit">
    </form>
  HTML
end
