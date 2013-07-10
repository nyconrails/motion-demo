# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:names) do

	style :root,
		backgroundColor: '#f4f4f4'.to_color

	style :shout,
		font: UIFont.systemFontOfSize(20),
		backgroundColor: UIColor.clearColor,
		color: UIColor.blackColor,
		constraints: [
			constrain_top(50),
			constrain_center_x
		]

	style :next,
    titleFont: UIFont.systemFontOfSize(20),
    titleColor: UIColor.blackColor,
    title: "CLICK ME",
    constraints: [
      constrain_width(180),
      constrain_height(40),
      constrain_center_x,
      constrain_center_y
    ]

end