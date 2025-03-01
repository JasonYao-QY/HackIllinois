//
//  EasyWalletTests.swift
//  EasyWalletTests
//
//  Created by Jason Yao on 3/1/25.
//

import Testing
import UserNotifications
@testable import EasyWallet

public func scheduleLocalNotification() {
    let content = UNMutableNotificationContent()
    content.title = "Test Notification"
    content.body = "This is a test notification."
    content.sound = .default

    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    let request = UNNotificationRequest(identifier: "testNotification", content: content, trigger: trigger)

    UNUserNotificationCenter.current().add(request) { error in
        if let error = error {
            print("Error scheduling notification: \(error.localizedDescription)")
        } else {
            print("Notification scheduled")
        }
    }
}

/*
struct EasyWalletTests {
    func testScheduleLocalNotification() {
            // 1. 设置期望
            let expectation = self.expectation(description: "Notification scheduled")

            // 2. 调用待测试的函数
            scheduleLocalNotification()

            // 3. 检查通知是否已添加到通知中心
            UNUserNotificationCenter.current().getPendingNotificationRequests { requests in
                let notificationExists = requests.contains { $0.identifier == "testNotification" }
                XCTAssertTrue(notificationExists, "Notification should be scheduled")
                expectation.fulfill()
            }

            // 4. 等待期望完成
            waitForExpectations(timeout: 10, handler: nil)
        }
}
*/
