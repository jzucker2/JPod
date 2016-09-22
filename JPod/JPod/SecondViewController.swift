//
//  SecondViewController.swift
//  JPod
//
//  Created by Jordan Zucker on 9/19/16.
//  Copyright © 2016 Jordan Zucker. All rights reserved.
//

import UIKit
import MediaPlayer

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let artistsQuery = MPMediaQuery.artists()
        // when true it's only icloud items, when false it's only local items
        let isCloudItemMediaPredicate = MPMediaPropertyPredicate(value: false, forProperty: MPMediaItemPropertyIsCloudItem)
        artistsQuery.addFilterPredicate(isCloudItemMediaPredicate)
        
        let collections = artistsQuery.collections!
        print(collections)
        for item in collections {
            print(item.representativeItem!.artist!)
        }
        
//        for item in collections {
//            print(item)
//        }
//        let items = artistsQuery.items!
//        for item in items {
//            print("\(item.artist) \(item.title)")
//        }
        
//        albumQuery.groupingType = .artist
//        guard let albums = albumQuery.collections else {
//            return
//        }
//        print(albums)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

