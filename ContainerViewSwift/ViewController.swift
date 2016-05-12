//
//  ViewController.swift
//  ContainerViewSwift
//
//  Created by Ravikumar Bukka on 5/11/16.
//  Copyright © 2016 Ravikumar Bukka. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController, UITextViewDelegate {
    
//    var embedController: ObjectiveCviewController = ObjectiveCviewController()
    
  var embedController: ObjectiveCviewController? = nil
    
    let disposeBag = DisposeBag()

    @IBOutlet weak var swiftOutputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        swiftOutputTextView.delegate = self
        swiftOutputTextView.text = "Output comes to this Swift file from ObjectiveC input via RxSwift ..."
        swiftOutputTextView.textColor = UIColor.lightGrayColor()
        
//  Here in Swift file I am observing the input values which are coming to objective C file or object of type textfield or textview
        
        Observable.combineLatest(embedController!.inputTextView.rx_text, embedController!.inputTextField.rx_text) { textValue1, textValue2  -> String in
            return (textValue1 + textValue2)
            }
            .map { $0 }
            .bindTo(swiftOutputTextView.rx_text)
            .addDisposableTo(disposeBag)
       
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        
        if swiftOutputTextView.textColor == UIColor.lightGrayColor() {
            swiftOutputTextView.text = ""
            swiftOutputTextView.textColor = UIColor.blackColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "embed" {
            
            embedController = segue.destinationViewController as? ObjectiveCviewController
            
        }
    }
}

