class CommentairesController < ApplicationController
  before_action :set_commentaire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @commentaires = Commentaire.all
    respond_with(@commentaires)
  end

  def show
    respond_with(@commentaire)
  end

  def new
    @commentaire = Commentaire.new
    respond_with(@commentaire)
  end

  def edit
  end

  def create
    @commentaire = Commentaire.new(commentaire_params)
    @commentaire.save
    respond_with(@commentaire)
  end

  def update
    @commentaire.update(commentaire_params)
    respond_with(@commentaire)
  end

  def destroy
    @commentaire.destroy
    respond_with(@commentaire)
  end

  private
    def set_commentaire
      @commentaire = Commentaire.find(params[:id])
    end

    def commentaire_params
      params.require(:commentaire).permit(:contenu, :date, :auteur)
    end
end
