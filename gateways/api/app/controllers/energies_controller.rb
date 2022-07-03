class EnergiesController < ApplicationController

  # GET: /energies
  get "/energies" do
    erb :"/energies/index.html"
  end

  # GET: /energies/new
  get "/energies/new" do
    erb :"/energies/new.html"
  end

  # POST: /energies
  post "/energies" do
    redirect "/energies"
  end

  # GET: /energies/5
  get "/energies/:id" do
    erb :"/energies/show.html"
  end

  # GET: /energies/5/edit
  get "/energies/:id/edit" do
    erb :"/energies/edit.html"
  end

  # PATCH: /energies/5
  patch "/energies/:id" do
    redirect "/energies/:id"
  end

  # DELETE: /energies/5/delete
  delete "/energies/:id/delete" do
    redirect "/energies"
  end
end
