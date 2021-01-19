//
//  MainViewController.swift
//  pagerDemo
//
//  Created by Javed Multani on 19/01/21.
//

import UIKit
import Pager

class MainViewController:  PagerController, PagerDataSource {
  
    var titles: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self

        // Instantiating Storyboard ViewControllers
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller1 = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        let controller2 = storyboard.instantiateViewController(withIdentifier: "SecondViewController")

        // Setting up the PagerController with Name of the Tabs and their respective ViewControllers
        self.setupPager(
            tabNames: ["First", "Last"],
            tabControllers: [controller1, controller2])

        customizeTab()

//        if let controller = controller4 as? GreyViewController {
//            controller.didSelectRow = { [weak self] (text: String) in
//                let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                if let detail = storyboard.instantiateViewController(withIdentifier: "greyTableDetail") as? GreyDetailViewController {
//                    detail.text = text
//                    self?.navigationController?.pushViewController(detail, animated: true)
//                }
//            }
//        }
    }

    // Customising the Tab's View
    func customizeTab() {
        indicatorColor = UIColor.white
        tabsViewBackgroundColor = UIColor.gray
        contentViewBackgroundColor = UIColor.gray.withAlphaComponent(0.32)

        startFromSecondTab = false
        centerCurrentTab = true
        tabLocation = PagerTabLocation.bottom
        tabHeight = 49
        tabOffset = 36
        tabWidth = view.frame.width/2.0
        fixFormerTabsPositions = false
        fixLaterTabsPosition = false
        animation = PagerAnimation.during
        selectedTabTextColor = .blue
        tabsTextFont = UIFont(name: "HelveticaNeue-Bold", size: 20)!
        // tabTopOffset = 10.0
        // tabsTextColor = .purpleColor()

    }

    // Programatically selecting a tab. This function is getting called on AppDelegate
    @objc func changeTab() {
        self.selectTabAtIndex(4)
    }

}
