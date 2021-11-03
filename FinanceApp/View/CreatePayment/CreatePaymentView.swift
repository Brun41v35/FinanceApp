//
//  CreatePaymentView.swift
//  FinanceApp
//
//  Created by Bruno Silva on 24/10/21.
//

import UIKit
import SnapKit

public class CreatePaymentView: UIView {
    
    // MARK: - Enum
    enum spacing: Int {
        case small = 5
        case medium = 16
        case big = 20
    }
    
    // MARK: - Variables
    lazy var paymentTextField = makeTextField()
    lazy var createPaymentButton = makeCreatePaymentButton()
    
    // MARK: - Init
    override init (frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Override
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        endEditing(true)
    }
    
    // MARK: - Setup
    private func setup() {
        setupColorBackground()
        addViews()
        setupConstraints()
    }
    
    private func setupColorBackground() {
        backgroundColor = .systemBackground
    }
    
    private func addViews() {
        addSubview(paymentTextField)
        addSubview(createPaymentButton)
    }
    
    // MARK: - Functions UI
    private func makeTextField() -> UITextField {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.placeholder = "Conta a pagar"
        textField.backgroundColor = .systemBackground
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.systemGray.cgColor
        
        return textField
    }
    
    private func makeCreatePaymentButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.setTitle("Adicionar", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(getPayment), for: .touchUpInside)
        
        return button
    }
    
    // MARK: - Functions
    @objc private func getPayment() {
        guard let namePayment = paymentTextField.text else { return }
        
        print("VALOR: \(namePayment)")
    }
    
    // MARK: - Constraints
    private func setupConstraints() {
        paymentTextField.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(100)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(50)
        }
        
        createPaymentButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalTo(safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
    }
}
