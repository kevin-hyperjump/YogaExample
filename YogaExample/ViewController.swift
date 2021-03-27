//
//  ViewController.swift
//  YogaExample
//
//  Created by Kevin Hermawan on 27/03/21.
//

import UIKit
import YogaKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "Hello, Yoga!"
    
    view.configureLayout { (layout) in
      layout.isEnabled = true
      
      // Styling
      layout.flex = 1
      layout.alignItems = .center
      layout.justifyContent = .center
    }
    
    view.backgroundColor = .white
    view.addSubview(largeBoxView)
    view.yoga.applyLayout(preservingOrigin: true)

    largeBoxView.addSubview(mediumBoxView)
    largeBoxView.yoga.applyLayout(preservingOrigin: true)

    mediumBoxView.addSubview(small1BoxView)
    mediumBoxView.addSubview(small2BoxView)
    mediumBoxView.yoga.applyLayout(preservingOrigin: true)
  }
  
  let largeBoxView: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    
    view.configureLayout { (layout) in
      layout.isEnabled = true
      
      layout.width = 300
      layout.height = 300
      layout.alignItems = .center
      layout.justifyContent = .center
    }
    
    return view
  }()
  
  let mediumBoxView: UIView = {
    let view = UIView()
    view.backgroundColor = .green
    
    view.configureLayout { (layout) in
      layout.isEnabled = true
      
      layout.width = 200
      layout.height = 200
      layout.flexDirection = .row
      layout.alignItems = .center
      layout.justifyContent = .spaceEvenly
    }
    
    return view
  }()
  
  let small1BoxView: UIView = {
    let view = UIView()
    view.backgroundColor = .blue
    
    view.configureLayout { (layout) in
      layout.isEnabled = true
      
      layout.width = 50
      layout.height = 50
    }
    
    return view
  }()
  
  let small2BoxView: UIView = {
    let view = UIView()
    view.backgroundColor = .blue
    
    view.configureLayout { (layout) in
      layout.isEnabled = true
      
      layout.width = 50
      layout.height = 50
    }
    
    return view
  }()
}
