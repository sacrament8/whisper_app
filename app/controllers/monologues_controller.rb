class MonologuesController < ApplicationController
    before_action :set_monologue, only: [:destroy, :edit]
    def index
        @monologues = Monologue.all
    end
    def edit
    end
    def create
        @monologue = Monologue.new(monologue_params)
        if @monologue.save
            redirect_to monologues_path, notice: 'ささやけました!'
        else
            render 'new'
        end
    end
    def new
        @monologue = Monologue.new
    end
    def destroy
        if @monologue.destroy
            redirect_to monologues_path, notice: '削除に成功しました'
        end
    end
    private
    def set_monologue
        @monologue = Monologue.find(params[:id])
    end
    def monologue_params
        params.require(:monologue).permit(:content)
    end
end
