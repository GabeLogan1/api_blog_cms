ApiBlogCms::Engine.routes.draw do
  get 'category/index'
  get 'blog/index'
  
  get 'blog' =>'blog#index'
  get 'category' =>'category#index'
	#root 'welcome#index'
end
