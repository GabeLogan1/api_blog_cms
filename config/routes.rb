ApiBlogCms::Engine.routes.draw do
  get 'category/index'
  get 'blog/index'
  
  get 'blogs' =>'blog#index'
  get 'categories' =>'category#index'
	#root 'welcome#index'
end
