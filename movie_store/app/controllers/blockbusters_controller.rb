class BlockbustersController < ApplicationController

    def index
        @blockbusters = Blockbuster.all
    end

    def show
        @blockbuster = Blockbuster.find(params[:id])
    end

    def new
        @blockbuster = Blockbuster.new
    end

    def create
        blockbuster = Blockbuster.create(name: params[:blockbuster][:name],
                                         genre: params[:blockbuster][:genre],
                                         year_released: params[:blockbuster][:year_released],
                                         award_nominee: params[:blockbuster][:award_nominee],
                                         quote: params[:blockbuster][:quote])
        redirect_to blockbuster_path(blockbuster.id)
    end

    def edit
        @blockbuster = Blockbuster.find(params[:id])
    end

    def update
        @blockbuster = Blockbuster.find(params[:id])
        @blockbuster.update(name: params[:blockbuster][:name],
                            genre: params[:blockbuster][:genre],
                            year_released: params[:blockbuster][:year_released],
                            award_nominee: params[:blockbuster][:award_nominee],
                            quote: params[:blockbuster][:quote])
        redirect_to blockbuster_path(@blockbuster.id)
    end

    def destroy
        @blockbuster = Blockbuster.find(params[:id])
        @blockbuster.delete
        redirect_to blockbusters_path
    end
end
