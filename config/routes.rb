ApiBlogCms::Engine.routes.draw do
  get 'blog/index'

  	get 'blog' =>'blog#index'

	#root 'welcome#index'
end
