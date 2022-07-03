class StationsController < ApplicationController

  # GET: /stations
  get "/stations" do
    erb :"/stations/index.html"
  end

  # GET: /stations/new
  get "/stations/new" do
    erb :"/stations/new.html"
  end

  # POST: /stations
  post "/stations" do
    redirect "/stations"
  end

  # GET: /stations/5
  get "/stations/:id" do
    erb :"/stations/show.html"
  end

  # GET: /stations/5/edit
  get "/stations/:id/edit" do
    erb :"/stations/edit.html"
  end

  # PATCH: /stations/5
  patch "/stations/:id" do
    redirect "/stations/:id"
  end

  # DELETE: /stations/5/delete
  delete "/stations/:id/delete" do
    redirect "/stations"
  end
end
