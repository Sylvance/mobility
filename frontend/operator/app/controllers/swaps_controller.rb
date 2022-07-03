class SwapsController < ApplicationController

  # GET: /swaps
  get "/swaps" do
    erb :"/swaps/index.html"
  end

  # GET: /swaps/new
  get "/swaps/new" do
    erb :"/swaps/new.html"
  end

  # POST: /swaps
  post "/swaps" do
    redirect "/swaps"
  end

  # GET: /swaps/5
  get "/swaps/:id" do
    erb :"/swaps/show.html"
  end

  # GET: /swaps/5/edit
  get "/swaps/:id/edit" do
    erb :"/swaps/edit.html"
  end

  # PATCH: /swaps/5
  patch "/swaps/:id" do
    redirect "/swaps/:id"
  end

  # DELETE: /swaps/5/delete
  delete "/swaps/:id/delete" do
    redirect "/swaps"
  end
end
