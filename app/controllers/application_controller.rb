require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    @hero1 = SuperHero.new(params[:member1_name], params[:member1_bio], params[:member1_power])
    @hero2 = SuperHero.new(params[:member2_name], params[:member2_bio], params[:member2_power])
    @hero3 = SuperHero.new(params[:member3_name], params[:member3_bio], params[:member3_power])
    erb :team
  end
end
