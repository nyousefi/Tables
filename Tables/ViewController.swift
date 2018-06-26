//
//  ViewController.swift
//  Tables
//
//  Created by Nima Yousefi on 6/25/18.
//  Copyright © 2018 Nima Yousefi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	@IBOutlet weak var tableView: NSTableView!
	var colorData = [1, 0, 1, 0]

	@IBAction func swapLine(_ sender: Any) {
		let idx = 1
		colorData[idx] = (colorData[idx] + 1) % 2
		//tableView.reloadData()
		tableView.reloadData(forRowIndexes: [idx], columnIndexes: [0])
	}

}

extension ViewController: NSTableViewDataSource {

	func numberOfRows(in tableView: NSTableView) -> Int {
		return colorData.count
	}

}

extension ViewController: NSTableViewDelegate {

	func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
		let cellId = (colorData[row]) % 2 == 0 ? "EvenCell" : "OddCell"
		return tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(cellId), owner: self)
	}
}

