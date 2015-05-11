# coding: utf-8
require 'sinatra/base'
require 'haml'

class ApplicationController < Sinatra::Base
  helpers ApplicationHelpers
 
  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../../public', __FILE__)
  enable :sessions, :method_override

  configure :production, :development do
    enable :logging
  end

  not_found do
    haml :not_found, :locals => { :title => '找不到页面！' }
  end
end
