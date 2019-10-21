require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base     # la classe AppController hérite de toutes les fonctionalités de Sinatra grâce à la classe Sinatra::Base

  get '/' do
    "<html>
      <head>
        <title> The Gossip Project </title>
      </head>
      <body>
        <h1> Mon Super Site de Gossip </h1>
      </body>
    </html> "
  end

  run! if app_file == $0

end
