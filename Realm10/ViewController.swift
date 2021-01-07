//
//  ViewController.swift
//  Realm10
//
//  Created by Marcus Wu on 2021/1/6.
//

import UIKit
import PinLayout
import RxCocoa
import RxSwift
import RealmSwift

class ViewController: UIViewController {

    // MARK: - Private
    
    private let addButton: UIButton =  {
        let button = UIButton(type: .system)
        
        button.setTitle("Add", for: .normal)
        
        return button
    }()
    
    private let updateButton: UIButton =  {
        let button = UIButton(type: .system)
        
        button.setTitle("Update", for: .normal)
        
        return button
    }()
    
    private let disposeBag = DisposeBag()
    
    private var token: NotificationToken?

    // MARK: - Constructor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        token = realm.objects(PersonObject.self)
            .observe { changeset in
                switch changeset {
                case let .initial(latestValue):
                    print("🔆 Init \(latestValue)")
                    
                case let .update(latestValue, _, _, _):
                    print("🔆 Update \(latestValue)")
                    
                case let .error(error):
                    print("🔆 Error \(error)")
                }
            }
        
        view.addSubview(addButton)
        view.addSubview(updateButton)
        
        addButton.rx.tap
            .subscribe(onNext: { _ in
                print("👇")

                let realm = try! Realm()
                
                try! realm.write {
                    let newObject = PersonObject()
                    
                    let string = UUID().uuidString
                    newObject.id = string
                    newObject.name = string
                    
                    realm.add(newObject)
                }
            })
            .disposed(by: disposeBag)
        
        updateButton.rx.tap
            .subscribe(onNext: { _ in
                print("👇👇")
                
                let realm = try! Realm()
                
                let oldObjects = realm.objects(PersonObject.self)
                let newObjectsTemplate = Array(oldObjects).map { $0.toTemplate() }
                let newObjects = newObjectsTemplate.map { $0.toObject() }
                
                newObjects.forEach { $0.isBusy = true }
                
                try! realm.write {
                    realm.delete(oldObjects)
                    realm.add(newObjects)
                }
            })
            .disposed(by: disposeBag)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        addButton.pin.sizeToFit().center()
        updateButton.pin.sizeToFit().top(to: addButton.edge.bottom).hCenter()
    }


}

