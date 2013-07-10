# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:home) do

	style :root,
		backgroundColor: '#f4f4f4'.to_color

	style :welcome,
    font: UIFont.systemFontOfSize(20),
		backgroundColor: UIColor.clearColor,
		color: UIColor.blackColor,
		text: 'Welcome Yo!',
		constraints: [
			constrain_top(50),
			constrain_center_x
		]

	style :next,
    titleFont: UIFont.systemFontOfSize(20),
    titleColor: UIColor.blackColor,
    title: "CLICK ME TO START",
    constraints: [
      constrain_center_x,
      constrain_center_y
    ]

end