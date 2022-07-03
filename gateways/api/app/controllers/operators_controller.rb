class OperatorsController < ApplicationController

  # GET: /operators
  get "/operators" do
    erb :"/operators/index.html"
  end

  # GET: /operators/new
  get "/operators/new" do
    erb :"/operators/new.html"
  end

  # POST: /operators
  post "/operators" do
    redirect "/operators"
  end

  # GET: /operators/5
  get "/operators/:id" do
    erb :"/operators/show.html"
  end

  # GET: /operators/5/edit
  get "/operators/:id/edit" do
    erb :"/operators/edit.html"
  end

  # PATCH: /operators/5
  patch "/operators/:id" do
    redirect "/operators/:id"
  end

  # DELETE: /operators/5/delete
  delete "/operators/:id/delete" do
    redirect "/operators"
  end
end
