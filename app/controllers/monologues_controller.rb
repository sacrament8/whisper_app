class MonologuesController < ApplicationController
    
    def index
        @monologues = Monologue.all
    end
    def edit
    end
    def create
    end
    def new
        @monologue = Monologue.new
    end
    private
    def set_monologue
        @monologue = Monologue.find(params[:id])
    end
    def monologue_params
        params.require(:monologue).permit(:content)
    end
end
