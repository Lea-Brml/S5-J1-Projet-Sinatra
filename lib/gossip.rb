require 'pry'
require 'csv'

class Gossip

  attr_accessor :author, :content


  def initialize(author, content)

    @author = author
    @content = content

  end


  def save

    CSV.open("db/gossip.csv","ab") do |csv|           #pour enregistrer les potins sur le fichier csv
        csv << [@author, @content]
            end

  end


  def self.all

    all_gossips = []                         #créer le tableau qui contiendra l'auteur et le contenu de chaque potin 

    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end

    return all_gossips

  end




  def self.find(id)

    return Gossip.all[id]

  end


end
