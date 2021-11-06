//
//  AppDelegate.swift
//  07-AppLogin
//
//  Created by Emmanuel Noriega Vaca on 22/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var isAuthenticated = false
    var plist = UserDefaults.standard
    var navController: UINavigationController?
    
    func MainStoryBoard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    func GetViewController(storyboard: UIStoryboard, ViewControllerName:String) -> UIViewController{
        return storyboard.instantiateViewController(withIdentifier: ViewControllerName)
    }
    
    func SetrootViewController(rootViewController:UIViewController, animate: Bool, tipo: Int) {
        if animate {
            if (tipo == 0){
                rootViewController.title = "Vista"
                navController = UINavigationController(rootViewController: rootViewController)
                window?.rootViewController = navController
                window?.makeKeyAndVisible()
            }else{
                window?.rootViewController = rootViewController
            }
            
    
            
            //MARK: Animation
            UIView.transition(with: window!, duration: 0.5, options: .transitionFlipFromRight, animations: {
                if tipo == 0 {
                    rootViewController.title = "Vista"
                    self.navController = UINavigationController(rootViewController: rootViewController)
                    self.window?.rootViewController = self.navController
                    self.window?.makeKeyAndVisible()
                }else{
                    self.window?.rootViewController = rootViewController
                }
            }, completion: nil)
        }else{
               if (tipo == 0){
                   rootViewController.title = "Vista"
                   navController = UINavigationController(rootViewController: rootViewController)
                   window?.rootViewController = navController
                   window?.makeKeyAndVisible()
               }else{
                   window?.rootViewController = rootViewController
               }
        }
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        //MARK: Si ya esta autenticado
        
        let usuario = plist.string(forKey: "usuario")
        
        if let usu = usuario {
            if usu == "norieemm"{
                isAuthenticated = true
                
            }
        }
        
        if isAuthenticated {
            let viewController = GetViewController(storyboard: MainStoryBoard(), ViewControllerName: "Principal")
            SetrootViewController(rootViewController: viewController, animate:  false, tipo: 0)
        }else{
            let loginViewController = GetViewController(storyboard: MainStoryBoard(), ViewControllerName: "Login") as! LoginViewController
            OnLoginSuccess()
            SetrootViewController(rootViewController: loginViewController, animate: true, tipo:1)
        }
        return true
        
    }
    func OnLoginSuccess(){
        let viewController = GetViewController(storyboard: MainStoryBoard(), ViewControllerName: "Principal")
        SetrootViewController(rootViewController: viewController, animate:  false, tipo: 0)
    }


    // MARK: UISceneSession Lifecycle


}

