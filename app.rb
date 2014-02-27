require 'sinatra'
require 'slim'

get '/:template?' do
  params[:template] ||= :index
  slim params[:template].to_sym
end
