class CardsController < ApplicationController
 before_action :set_card, only: [:show, :edit, :destroy, :update]
    def index
      @cards = Card.all
    end
    
    def new 
      @card = Card.new
    end
    
    def create
      @card = Card.new(card_params)
      if @card.save
          redirect_to cards_path
      else 
          flash[:alert] = "Failed to save"
          redirect_to :back
      end
    end

    def update
      if @card.update(card_params)
        redirect_to cards_path
      else 
        flash[:alert] = "Failed to save"
        redirect_to :back
      end
    end
    
    def edit
    end

    def show
    end
    
    def destroy
      if @card.destroy
        redirect_to cards_path
      else
        flash[:alert] = "Failed to delete"
      end
    end
    
    private
    def card_params
        params.require(:card).permit(:card_id, :card_name, :content, :avatar)
    end
    
    def set_card
        @card = Card.find(params[:id])
    end
end