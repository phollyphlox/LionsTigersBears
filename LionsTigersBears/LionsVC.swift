//
//  LionsVC.swift
//  LionsTigersBears
//
//  Created by admin on 1/30/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

var myLions:[Lion] = []
var LionIndex = 0

class LionsVC: UIViewController {
    
    
    
    @IBOutlet weak var lblLionName: UILabel!
    @IBOutlet weak var imgLion: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var northeastCongo = Lion()
        northeastCongo.name = "Northeast Congo (Azandica)"
        northeastCongo.description = "This subspecies is native to the lands of Uganda and D R Congo; it is also called the 'Uganda lion'. It is found in the Kidepo Valley in Uganda, and also in parts of Central Africa, in the Murchison Falls National Parks. It was abundantly found in the Congo River Basin, but, after the surveys conducted in 2008, no lions have been found there. This species is also classified as severely endangered."
        northeastCongo.image = UIImage(named: "NortheastCongoLion.jpg")
        
        var transvaal = Lion()
        transvaal.name = "Transvaal or South African (Krugeri)"
        transvaal.description = "The Transvaal lion is native to southeast Africa, and is called 'Transvaal lion' after the 'Transvaal' region of South Africa. It has a well-developed, full mane, and is black-maned as well. The males weigh between 150 to 250 kg, while the females weigh between 110 to 180 kg. It is also found in the Kruger National Park and the Kalahari region."
        transvaal.image = UIImage(named: "TransvaalLion.jpg")
        
        var asiactic = Lion()
        asiactic.name = "Asiactic (Persica)"
        asiactic.description = "Popularly known as the Indian lion or the Persian lion, this species is widely found in the Gir Forest National Park in the state of Gujarat, India. It is slightly smaller than the African lion and has a less developed mane. The male species weighs between 160 to 190 kg, while the female weighs between 110 to 120 kg. Compared to the African lion, it has a lesser genetic variation."
        asiactic.image = UIImage(named: "AsiaticLion.jpg")
        
        var barbary = Lion()
        barbary.name = "Barbary (Leo)"
        barbary.description = "It is believed to be native to the Atlas Mountain of North Africa, which is why it is also called the Atlas lion. Once, it was considered to be one of the biggest lion species. According to records and stuffed museum specimens, its length (head to tail) varied between 7 feet 9 inches to 9 feet 2 inches. It is typically considered extinct now, since records depict that some of the last lions of these species were killed somewhere between the 1950s and 1960s."
        barbary.image = UIImage(named: "BarbaryLion.jpg")
        
        var westAfrican = Lion()
        westAfrican.name = "Wes African (Senegalensis)"
        westAfrican.description = "It is also called the Senegal lion, and is native to West Africa, which is why it is called the West African lion. Its size is somewhat similar to the lions native to Central Africa, but is smaller than the ones from Southern Africa. The total population of this species is believed to be less than 1000 overall, and is considered to be among the most endangered species. "
        westAfrican.image  = UIImage(named: "WestAfricanLion.jpg")
        
        var eastAfrican = Lion()
        eastAfrican.name = "East African or Masai (Nubica)"
        eastAfrican.description = "This East African species is described as being from 'Nubia', and has longer legs and less curvier backs than other species. They are generally between 8 to 10 feet tall, and have a variety of mane styles. That is to say, they have great tufts of manes, or their manes look like they have been combed backwards. Fortunately, this species hasn't been classified as endangered yet, and is found in parts of Uganda and Kenya and the Tanga Region."
        eastAfrican.image = UIImage(named: "MasaiLion.jpg")
        
        var katanga = Lion()
        katanga.name = "Southwest African or Katanga (Bleyenberghi)"
        katanga.description = "This species is native to southwestern Africa. It is found in Zimbabwe, Botswana, Zambia, Zaire, Angola, etc. It is among the largest lion subspecies. The name 'Katanga' signifies a place called 'Katanga', in Zaire, from where the species seems to have originated. Katanga lions have lighter manes than their counterparts."
        katanga.image = UIImage(named: "KatangaLion.jpg")
        
        var whiteLion = Lion()
        whiteLion.name = "White Lion"
        whiteLion.description = "White lions belong to the same species as the P. l. krugeri (Southeast African or Transvaal lion). They are white-colored due to a color mutation, a recessive trait. They are extremely rare and are found only in zoos, sanctuaries, and wildlife reserves. They are said to be native to the Timbavati region of South Africa. Their color may range from blond to off-white to white. They are found in the Lory Park Zoo in South Africa, the Belgrade Zoo in Serbia, the Karachi Zoo in Pakistan, the Kingdom of Zion in New Zealand, etc."
        whiteLion.image = UIImage(named: "WhiteLion.jpg")
        
        var kalahari = Lion()
        kalahari.name = "Kalahari"
        kalahari.description = "As the name suggests, these lions are native to the Kalahari region of Africa. They are black-maned and have adapted to the harsh climatic conditions of the Kalahari. They have a lower body weight as compared to their counterparts, and this helps them hunt faster, making their bodies swift and agile. They are known to hunt at night due to the cooler temperatures and availability of prey. Their bodies are naturally adaptable to higher endurance. It is indeed unfortunate that these strong and handsome cats are becoming an endangered species, thanks to the extensive poaching and hunting activities undertaken by the human race. In a bid to protect these majestic creatures from further harm and extinction, many organizations are taking efforts to pass legislation and enforcing prohibition of lion hunting."
        kalahari.image = UIImage(named: "KalahariLion.jpg")
        
        myLions += [asiactic, barbary, westAfrican, northeastCongo, eastAfrican, katanga, transvaal, whiteLion, kalahari]
    
        lblLionName.text = myLions[0].name
        imgLion.image = myLions[0].image

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNextLion(_ sender: UIButton) {
        LionIndex += 1
        
        if LionIndex > 8 {
            LionIndex = 0
        }
        let lion = myLions[LionIndex]
        //lblLionName.text = lion.name
        //imgLion.image = lion.image
        
        UIView.transition(with: self.view, duration: 2, options: UIViewAnimationOptions.transitionCrossDissolve,
                          animations: {
                            self.imgLion.image = lion.image
                            self.lblLionName.text = lion.name
        }, completion: {
            (finished: Bool) -> () in
        })
    
    }
    
  
    @IBAction func lblPreviousLion(_ sender: UIButton) {
        LionIndex -= 1
        
        if LionIndex < 0{
            LionIndex = 0
        }
        let lion = myLions[LionIndex]
        //lblLionName.text = lion.name
        //imgLion.image = lion.image
        
        UIView.transition(with: self.view, duration: 2, options: UIViewAnimationOptions.transitionCrossDissolve,
                          animations: {
                            self.imgLion.image = lion.image
                            self.lblLionName.text = lion.name
            }, completion: {
                (finished: Bool) -> () in
        })    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
