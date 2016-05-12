# RxSwift_POC1

Its a POC where I am trying to achieve the  1st objective which was mentioned by Nikish, here I am trying to showcase the combination of Objective C with Swift (via Bridging) and Included RxSwift framework.

This is fist part of the POC where I am trying to add Objective C files or objects into my existing Swift project via Bridging (by following this example anyone can easily do the 2nd part of the POC i.e., infusing Swift into ObjectiveC files).

And here in Swift files I am observing any events which came to Objective C file via RxSwift Reactive framework.

ObjectiveCviewController.h and .m are ObjectiveC files and which are producing events via user input through UITextview (which is inside red color container).

ViewController.swift is an Swift file and in which RxSwift framework is used (since it supports only swift language) and here I am observing those inputed values and show casing them in UITextview (which is inside blue color container).

NOTE: In this POC i have used UIContainer Object to add both the view controllers (objective C and Swift) in a single storyboard view for better understanding.

NOTE: use latest Xcode 7.3.1 for running the app.