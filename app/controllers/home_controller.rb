class HomeController < UIViewController
	stylesheet :home

	def initWithNibName(name, bundle: bundle)
    super.tap do
    	self.title = 'Home'
    end
  end

  layout :root do 
  	@welcome = subview(UILabel, :welcome)
  	@next = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :next).on(:touch) do
  		go_to_next_page
  	end
  end

  def layoutDidLoad
    @welcome.numberOfLines= 0
    @welcome.sizeToFit
  end

  def go_to_next_page
  	page = TableController.new
  	page.navigationItem.title = "Next Page" 
    self.navigationController.pushViewController(
      page,
      animated: true
    )
  end

end