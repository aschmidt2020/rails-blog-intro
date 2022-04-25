class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
end

#when action does not specifically render a view it will render the view that matches the name of the controller action -->
#will render app/views/articles/index.html.erb
