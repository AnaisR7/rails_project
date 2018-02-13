class CommentairesController < ApplicationController
  before_action :set_commentaire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @commentaires = Commentaire.all
    respond_with(@commentaires)
  end

  def show
  end

  def new
    @post = Post.find(params[:post_id])
    @commentaire = Commentaire.new
  end

  def edit
  end

  def create
    @commentaire = Commentaire.new(commentaire_params)
    if @commentaire.save
      redirect_to post_path(@commentaire.post_id)
    end
  end

  def update
    @post = Post.find(params[:post_id])
    @commentaire.update(commentaire_params)
  end

  def destroy
    @commentaire.destroy
    redirect_to posts_path()
  end

  private
    def set_commentaire
      @commentaire = Commentaire.find(params[:id])
    end

    def commentaire_params
      params.require(:commentaire).permit(:contenu, :date, :auteur, :post_id)
    end
end
