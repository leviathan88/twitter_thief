class InterestsController < ApplicationController
    def index
        @interests = Interest.all    
    end
    
    def show
        @interest = Interest.find(params[:id])
    end
    
    def new
       @interest = Interest.new
    end
    
    def edit
        @interest = Interest.find(params[:id])
    end
    
    def create
        @interest = Interest.new(interest_params)
        
        if @interest.save
            redirect_to @interest
        else
            render 'new'
        end
    end
    
    def update
          @interest = Interest.find(params[:id])
         
          if @interest.update(interest_params)
            redirect_to @interest
          else
            render 'edit'
          end
    end
    
    def destroy
         @interest = Interest.find(params[:id])
         @interest.destroy
         
         redirect_to interests_path
    end
    
    
    private
      def interest_params
        params.require(:interest).permit(:screen_name, :hashtags, :user_mentions)
      end
end
