class TableController < UIViewController
	stylesheet :next

	def initWithNibName(name, bundle: bundle)
    super.tap do
    	@names = ["Yanik", "David", "JKF", "Kevin", "JBP3", "Alec", "Adam 'no refrigerator respect' Carver", "Ally", "Sharon"]
    end
  end

  layout :root do 
  	@table_view = subview(UITableView, :table_view)
    @table_view.dataSource = self
    @table_view.delegate = self
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @names.count
  end

  def tableView(tableView, heightForRowAtIndexPath:indexPath)
    80
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    @reuseIdentifier ||= "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    end

    cell.textLabel.text = @names[indexPath.row]
    cell.textLabel.font = UIFont.systemFontOfSize(14)

    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    name = @names[indexPath.row]
    names = NamesController.new
    names.navigationItem.title = name
    self.navigationController.pushViewController(
      names,
      animated: true
    )
  end

end