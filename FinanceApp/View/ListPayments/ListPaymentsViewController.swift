//
//  ListPaymentsViewController.swift
//  FinanceApp
//
//  Created by Bruno Silva on 24/10/21.
//

import UIKit

class ListPaymentsViewController: UIViewController {
    
    // MARK: - Constants
    let listPaymentView: ListPaymentView = ListPaymentView()
    let identifierCell: String = "myCell"
    
    // MARK: - Variables
    var newListPayments: [String] = ["Teste 01", "Teste 02", "Teste 03", "Teste 04", "Teste 05"]
    
    // MARK: - LifeCycle
    override func loadView() {
        view = listPaymentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Setup
    private func setup() {
        setupNavigationBar()
        setDelegates()
        registerCell()
    }
    
    private func setDelegates() {
        listPaymentView.listPaymentTableView.delegate = self
        listPaymentView.listPaymentTableView.dataSource = self
    }
    
    private func registerCell() {
        listPaymentView.listPaymentTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifierCell)
    }
    
    private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                 target: self,
                                                                 action: #selector(callAddPayments))
    }
    
    // MARK: - Functions
    private func callCreatePaymentViewController() {
        let createPaymentViewController = CreatePaymentViewController()
        navigationController?.pushViewController(createPaymentViewController, animated: true)
    }
    
    // MARK: - Actions
    @objc private func callAddPayments() {
        callCreatePaymentViewController()
    }
}

// MARK: - Extension
extension ListPaymentsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newListPayments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listPaymentView.listPaymentTableView.dequeueReusableCell(withIdentifier: identifierCell) as! UITableViewCell
        
        cell.textLabel?.text = newListPayments[indexPath.row]
        
        return cell
    }
    
}
