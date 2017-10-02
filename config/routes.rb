ApiBlogCms::Engine.routes.draw do
  get 'category/index'
  get 'blog/index'
  
  get 'blogs' =>'blog#index'
  get 'categories' =>'category#index'


get '/blog/:id', to: 'blog#show'


#root 'welcome#index'
end
