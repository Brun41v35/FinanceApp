//
//  SceneDelegate.swift
//  FinanceApp
//
//  Created by Bruno Silva on 23/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // MARK: - Variables
    var window: UIWindow?
    
    // MARK: - Functions
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        UINavigationBar.appearance().barTintColor = .systemRed
    }
    
    private func createListPaymentVC() -> UINavigationController {
        let listPaymentViewController = ListPaymentsViewController()
        listPaymentViewController.title = "Lista de Pagamentos"
        listPaymentViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        return UINavigationController(rootViewController: listPaymentViewController)
    }
    
    private func createTabBar() -> UITabBarController {
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers = [createListPaymentVC()]
        
        return tabbar 
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

