# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:next) do

	style :root

	style :table_view,
		separatorStyle: UITableViewCellSeparatorStyleSingleLine,
		separatorColor: '#c6c6c6'.to_color,
		constraints: [
			:top_left,
			:full_height,
			:full_width
			],
		backgroundColor: '#BA8E4A'.to_color

end