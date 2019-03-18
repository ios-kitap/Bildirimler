//
//  ViewController.swift
//  bildirim
//
//  Created by Emre Erol on 18.03.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {didAllow,error in
                if error == nil {
                    
                }
            })
    }

    
    @IBAction func showNotif(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "Bildirim Başlığı"
        content.subtitle = "Bildirim alt başlığı"
        content.body = "Bildirimin asıl içeriği"
        content.badge = 1
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "ZamanDoldu", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

