//
//  ViewController.swift
//  Whats New App
//
//  Created by Kingsley Charles on 22/12/2020.
//

import UIKit
import WhatsNewKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let versionStore: WhatsNewVersionStore = KeyValueWhatsNewVersionStore()
    
    override func viewDidAppear(_ animated: Bool)
    {
        let whatsNew = WhatsNew(title: "What's New" ,
                                items: [
                                    WhatsNew.Item(
                                        title: "Add Favorites",
                                        subtitle: "Now you can add favourtes in the app",
                                        image: UIImage(systemName: "star")) , WhatsNew.Item(title: "Volume", subtitle: "You can control the volume now!", image: UIImage(systemName: "speaker")),
                                    WhatsNew.Item(
                                        title: "Listen",
                                        subtitle: "Listen to the top songs around the world",
                                        image: UIImage(systemName: "ear")),
                                    WhatsNew.Item(
                                        title: "Settings",
                                        subtitle: "Control the quality of your music",
                                        image: UIImage(systemName: "gearshape"))
                                    
                                ]) //End of initialising whatsnew
        let vc = WhatsNewViewController(whatsNew: whatsNew , theme: .whiteBlue, versionStore: versionStore)
        
        guard let viewController = vc else {
            // The user has already seen the WhatsNew-Screen for the current Version of your app
            return
        }

        
        present(viewController, animated: true, completion: nil)
        
        
    }
    
    
}

