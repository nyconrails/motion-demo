class ModalController < UIViewController
	attr_accessor :controller

	def init
    super.tap do
    	@controller = nil
      initWithNibName(nil, bundle: nil)
      self.title = "Sweet Modal"
      self.view.backgroundColor = "#7ea857".to_color
      self.view.addSubview(nav_bar)
    end
  end

  def nav_bar(type=nil)
  	nav_bar = UINavigationBar.alloc.initWithFrame([[0, 0], [320, 44]])
  	item = UINavigationItem.new
    item.leftBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(
        UIBarButtonSystemItemCancel,
        target: self,
        action: :cancel)
    nav_bar.items = [item] 
    nav_bar
	end

	def cancel
		@controller.dismissModalViewControllerAnimated(false)
	end

end