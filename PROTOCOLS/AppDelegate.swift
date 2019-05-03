//
//  AppDelegate.swift
//  PROTOCOLS
//
//  Created by Oleksandr Bardashevskyi on 5/3/19.
//  Copyright © 2019 Oleksandr Bardashevskyi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let dancer1 = Dancer()
        let dancer2 = Dancer()
        dancer1.name = "Dancer1"
        dancer1.kindOfClass = "Dancer"
        dancer2.name = "Dancer2"
        dancer2.kindOfClass = "Dancer"
        
        let student1 = Student()
        let student2 = Student()
        let student3 = Student()
        student1.name = "Student1"
        student1.universityName = "University"
        student1.kindOfClass = "Student"
        student2.name = "Student2"
        student2.kindOfClass = "Student"
        student2.universityName = "University"
        student3.name = "Student3"
        student3.kindOfClass = "Student"
        student3.universityName = "University"
        
        let developer1 = Developer()
        developer1.name = "Developer"
        developer1.kindOfClass = "Developer"
        
        let patients: [Patient] = [dancer1, dancer2, student1, student2, student3, developer1]
        
        for object in patients {
            
            object.howIsYourFamilly()
            object.howIsYourJob()
            
            if let student = object as? Student {
                print(student.universityName)
            }
            
            print(object.name)
            if !object.areYouOK() {
                object.takePill()
                if !object.areYouOK() {
                    object.makeShot()
                }
            } else {
                print("Go away from here!")
            }
        }
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

