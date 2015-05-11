# coding: utf-8

require_relative './application_controller'

class WebsiteController < ApplicationController
  get '/' do
    haml :index, :locals => {:title => "Test Homepage", :stylesheets => ["pickadate-default", "pickadate-default.date"], :scripts => ["picker.date", "picker"]}
  end
end
