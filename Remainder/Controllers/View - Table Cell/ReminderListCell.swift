//
//  ReminderListCell.swift
//  Remainder
//
//  Created by mahesh on 22/02/22.
//

import UIKit


class ReminderListCell: UITableViewCell {
  typealias DoneButtonAction = () -> Void
  
  @IBOutlet var titleLabel: UILabel!
  
  @IBOutlet var dateLabel: UILabel!
  
  @IBOutlet var doneButton: UIButton!
  
  var doneButtonAction: DoneButtonAction?
  
  
  @IBAction func doneButtonTriggered(_ sender: UIButton) {
    
    doneButtonAction?()
    
  }
  
  func configure(title: String, dateText: String, isDone: Bool, doneButtonAction: @escaping DoneButtonAction) {
    titleLabel.text = title
    dateLabel.text = dateText
    let image = isDone ? UIImage(systemName: "circle.circle.fill") : UIImage(systemName: "circle")
    doneButton.setBackgroundImage(image, for: .normal)
    self.doneButtonAction = doneButtonAction
  }
}
