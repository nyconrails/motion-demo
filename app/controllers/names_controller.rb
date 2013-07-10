class NamesController < UIViewController
	stylesheet :names

	def initWithNibName(name, bundle: bundle)
    super.tap do
    end
  end

  layout :root do 
  	@shout_out = subview(UILabel, :shout)
  	@button = subview(UIButton.buttonWithType(UIButtonTypeRoundedRect), :next).on(:touch) do
  		present_modal
  	end
  end

  def layoutDidLoad
    if self.navigationItem.title == "Adam 'no refrigerator respect' Carver"
    	@shout_out.text = "Please return my vita coco"
    else
    	@shout_out.text = "Damn Fool, you's a cold ass honky"
    end
    @shout_out.numberOfLines= 0
    @shout_out.sizeToFit
  end

  def present_modal
    modal = ModalController.new
    self.presentModalViewController(modal, animated:true)
    modal.controller = self.navigationController
  end

end