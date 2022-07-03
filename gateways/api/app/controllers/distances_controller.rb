class DistancesController < ApplicationController

  # GET: /distances
  get "/distances" do
    erb :"/distances/index.html"
  end

  # GET: /distances/new
  get "/distances/new" do
    erb :"/distances/new.html"
  end

  # POST: /distances
  post "/distances" do
    redirect "/distances"
  end

  # GET: /distances/5
  get "/distances/:id" do
    erb :"/distances/show.html"
  end

  # GET: /distances/5/edit
  get "/distances/:id/edit" do
    erb :"/distances/edit.html"
  end

  # PATCH: /distances/5
  patch "/distances/:id" do
    redirect "/distances/:id"
  end

  # DELETE: /distances/5/delete
  delete "/distances/:id/delete" do
    redirect "/distances"
  end
end
