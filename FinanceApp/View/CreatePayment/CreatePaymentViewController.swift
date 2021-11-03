//
//  CreatePaymentViewController.swift
//  FinanceApp
//
//  Created by Bruno Silva on 24/10/21.
//

import UIKit

protocol CreatePaymentViewControllerDelegate {
    
}

class CreatePaymentViewController: UIViewController {
    
    // MARK: - Variables
    var delegate: CreatePaymentViewControllerDelegate?
    
    // MARK: - Constants
    let createPaymentView = CreatePaymentView()
    
    // MARK: - LifeCycle
    override func loadView() {
        view = createPaymentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Setup
    
    // MARK: - Functions
    
}
