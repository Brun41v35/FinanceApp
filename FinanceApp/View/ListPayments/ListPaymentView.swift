//
//  ListPaymentView.swift
//  FinanceApp
//
//  Created by Bruno Silva on 24/10/21.
//

import UIKit
import SnapKit

public class ListPaymentView: UIView {
    
    // MARK: - Variables
    lazy var listPaymentTableView = makeTableView()
    
    // MARK: - Init
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setup() {
        setupBackgroundColor()
        addSubviews()
        makeConstraints()
    }
    
    private func addSubviews() {
        addSubview(listPaymentTableView)
    }
    
    private func setupBackgroundColor() {
        backgroundColor = .systemBackground
    }
    
    // MARK: - Functions
    private func makeTableView() -> UITableView {
        let tableView = UITableView()
        tableView.rowHeight = 100
        
        return tableView
    }
    
    // MARK: - Constraints
    private func makeConstraints() {
        listPaymentTableView.snp.makeConstraints { make in
            make.top.bottom.equalTo(safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
        }
    }
}
