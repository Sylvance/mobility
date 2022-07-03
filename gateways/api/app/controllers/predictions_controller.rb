class PredictionsController < ApplicationController

  # GET: /predictions
  get "/predictions" do
    erb :"/predictions/index.html"
  end

  # GET: /predictions/new
  get "/predictions/new" do
    erb :"/predictions/new.html"
  end

  # POST: /predictions
  post "/predictions" do
    redirect "/predictions"
  end

  # GET: /predictions/5
  get "/predictions/:id" do
    erb :"/predictions/show.html"
  end

  # GET: /predictions/5/edit
  get "/predictions/:id/edit" do
    erb :"/predictions/edit.html"
  end

  # PATCH: /predictions/5
  patch "/predictions/:id" do
    redirect "/predictions/:id"
  end

  # DELETE: /predictions/5/delete
  delete "/predictions/:id/delete" do
    redirect "/predictions"
  end
end
