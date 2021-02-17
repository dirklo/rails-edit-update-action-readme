class Article < ActiveRecord::Base
    def set_params(params)
        self.title = params[:article][:title] 
        self.description = params[:article][:description]
        self.save
    end    
end