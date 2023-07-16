//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  @IBOutlet weak var chose2: UIButton!
  @IBOutlet weak var text: UILabel!
  @IBOutlet weak var chose1: UIButton!
  
  var storyBrain = StoryBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }

  @IBAction func choseMade(_ sender: UIButton) {
    let choice = sender.currentTitle!
    storyBrain.nextStory(choice)
    updateUI()
  }
  
  func updateUI(){
    let actualStory = storyBrain.getStory()
    text.text = actualStory.title
    chose1.setTitle(actualStory.choice1, for: UIControl.State.normal)
    chose2.setTitle(actualStory.choice2, for: UIControl.State.normal)
  }
    
  
}

