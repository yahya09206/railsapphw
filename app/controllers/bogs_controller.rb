class BogsController < ApplicationController
  def index
    @bogs = Bog.all
  end

  def create
    Bog.create bog_params
    redirect_to bogs_path
  end

  def new
    @bog = Bog.new
  end

  def edit
    @bog = Bog.find params[:id]
  end

  def show
    @bog = Bog.find params[:id]
  end

  def update
    bog = Bog.find params[:id]
    bog.update bog_params
    redirect_to bogs_path
  end

  def destroy
    Bog.find(params[:id]).delete
    redirect_to bogs_path
  end

  private
  def bog_params
    params.require(:bog).permit(:description, :name)
  end
end
