class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
  	@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  	@window.makeKeyAndVisible

  	controller = HomeController.new
  	nav = UINavigationController.alloc.initWithRootViewController(controller)
  	nav.navigationBar.barStyle = UIBarStyleBlack
		@window.rootViewController = nav

    true
  end


end
