class MonologuesController < ApplicationController
    before_action :set_monologue, only: [:destroy, :edit, :update]
    def index
        @monologues = Monologue.all
    end
    def edit
    end
    def update
        if @monologue.update(monologue_params)
            redirect_to monologues_path, notice: '編集に成功しました!'
        else
            render 'edit'
        end
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
    def confirm
        @monologue = Monologue.new(monologue_params)
        render 'new' if @monologue.invalid?
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
