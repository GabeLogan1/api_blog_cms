ApiBlogCms::Engine.routes.draw do
  	get 'welcome' =>'welcome#index'

	root 'welcome#index'
end
