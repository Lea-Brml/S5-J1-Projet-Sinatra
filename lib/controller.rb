require_relative 'gossip'                                #require_relative sert si les fichiers ne sont pas dans les memes dossiers, ici ils sont au meme endroit sur l'arbo dons require c'est OK

class ApplicationController < Sinatra::Base     # la classe AppController hérite de toutes les fonctionalités de Sinatra grâce à la classe Sinatra::Base


# pour l'affichage de mes potins, commencer à partir du n°9, j'ai rempli des potins vides du premier au 8eme, c'est pas très intélligent, je sais.

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"],params["gossip_content"]).save
    redirect '/'
  end

  get '/gossips/:id/' do
    erb :show, locals: {show: Gossip.all.find(params['id'].to_i)}
    #"Voici le numéro du potin que tu veux :  #{params['id']}!"
  end



end
