class MotorcyclesController < ApplicationController

  # GET: /motorcycles
  get "/motorcycles" do
    erb :"/motorcycles/index.html"
  end

  # GET: /motorcycles/new
  get "/motorcycles/new" do
    erb :"/motorcycles/new.html"
  end

  # POST: /motorcycles
  post "/motorcycles" do
    redirect "/motorcycles"
  end

  # GET: /motorcycles/5
  get "/motorcycles/:id" do
    erb :"/motorcycles/show.html"
  end

  # GET: /motorcycles/5/edit
  get "/motorcycles/:id/edit" do
    erb :"/motorcycles/edit.html"
  end

  # PATCH: /motorcycles/5
  patch "/motorcycles/:id" do
    redirect "/motorcycles/:id"
  end

  # DELETE: /motorcycles/5/delete
  delete "/motorcycles/:id/delete" do
    redirect "/motorcycles"
  end
end
