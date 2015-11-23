require 'bundler'
Bundler.require

get '/' do
erb :index
end

get '/api' do
movie_json = JSONReader.new('movie.json')
return movie_json.to_hash.to_json

end
