class BatteriesController < ApplicationController

  # GET: /batteries
  get "/batteries" do
    erb :"/batteries/index.html"
  end

  # GET: /batteries/new
  get "/batteries/new" do
    erb :"/batteries/new.html"
  end

  # POST: /batteries
  post "/batteries" do
    redirect "/batteries"
  end

  # GET: /batteries/5
  get "/batteries/:id" do
    erb :"/batteries/show.html"
  end

  # GET: /batteries/5/edit
  get "/batteries/:id/edit" do
    erb :"/batteries/edit.html"
  end

  # PATCH: /batteries/5
  patch "/batteries/:id" do
    redirect "/batteries/:id"
  end

  # DELETE: /batteries/5/delete
  delete "/batteries/:id/delete" do
    redirect "/batteries"
  end
end
