//
//  ViewController.swift
//  pushNotification
//
//  Created by Ebrahim  Mo Gedamy on 4/24/20.
//  Copyright © 2020 Ebrahim  Mo Gedamy. All rights reserved.
//

///http://www.thomashanning.com/push-notifications-local-notifications-tutorial/

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
     
    override func viewDidAppear(_ animated: Bool) {
        self.setupNotification(title: "Title", body: "Body")
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0.6890751719, blue: 0.7677195668, alpha: 0.8)
    }

    func setupNotification(title: String,body: String) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
        
        let request = UNNotificationRequest(identifier: "id", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { (eror) in
            print("Successfully")
        }
    }

}

