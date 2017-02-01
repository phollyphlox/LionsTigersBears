//
//  TigerVC.swift
//  LionsTigersBears
//
//  Created by Apple28 on 1/31/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

var myTigers:[Tiger] = []
var TigerIndex = 0

class TigerVC: UIViewController {
    
    @IBOutlet weak var lblTiger: UILabel!
    @IBOutlet weak var imgTiger: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var siberian = Tiger()
        siberian.name = "Siberian"
        siberian.description = "Siberian tigers are muscular, packed with large heads and powerful forelimbs. Their colors vary from orange to brown that are splashed with white areas and black stripes. Their faces have long whiskers that are longer in male tigers, featuring eyes that don rounded pupils that have been accentuated by yellow irises. The ears, however, are small and rounded with black markings that surround white areas called ocelli, which are not decorative but actually contribute to communication within the species. The stripe pattern is different in each tiger. The markings are so unique, like human fingerprints, that researchers actually use them to identify a particular tiger.You may have heard of scientists trying to follow up what has happened to one particular tiger they have encountered before. The stripes could also be used as a means of camouflage, which is advantageous when they silently follow and pounce at their prey. The tiger, among large cats, has the most varied size even when compared to leopards and lions."
        siberian.image = UIImage(named: "siberian.jpg")
        
        var bengal = Tiger()
        bengal.name = "Bengal"
        bengal.description = "The tiger has nine subspecies. Three of these are already extinct. The historical range of tigers all across Asia is now significantly smaller. The surviving subspecies of the Pathera tigris trigris, which is popularly known by its common name, Bengal tiger can be found in Bangladesh, Bhutan, India and Nepal. It is still the subspecies with the most living individuals left, even with its mere 2,500 adult tiger population. Bengal tigers can be found in alluvial grasslands, rainforests of both the tropical and subtropical kinds, mangroves, deciduous forests and scrub forests. Male Bengal tigers can reach up to 270 to 310 centimeters (110 to 120 inches) while the females reach up to 240 to 265 centimeters (94 to 104 inches). The males are also heavier, at 175 to 260 kilograms (390 to 570 pounds), while the females weigh around 100 to 181 kilograms (220 to 400 pounds). Places also have an effect on the weight and length of the Bengal tiger, with those living in Nepal and India growing to become the largest bunch."
        bengal.image = UIImage(named: "bengal.jpg")
        
        var indochinese = Tiger()
        indochinese.name = "Indochinese"
        indochinese.description = "The Panthera tigris corbetti, more commonly known as the Indochinese tiger, can be found in several Asian countries such as Burma, Cambodia, Laos, China, Vietnam and Thailand. They are darker in color and smaller in size than Bengal tigers but they are not lightweights either, with their capacity to reach the maximum weight of 420 pounds for males and 310 pounds for females. Indochinese tigers prefer to live in forests in areas that are either hilly or mountainous. There aren't a lot of these tigers anymore. The government estimates the subspecies population to be at a mere 350. Even those that have been left behind are still in danger of being poached or even of starving due to the fact that their primary choice of prey, such as wild pigs and deer, are decreasing. In Vietnam, about 75% of the tigers have been poached to serve as Chinese pharmacy stock."
        indochinese.image = UIImage(named: "indochinese.jpg")
        
        var maylayan = Tiger()
        maylayan.name = "Malayan"
        maylayan.description = "The Panthera tigris jacksoni, otherwise known as the Malayan tiger, can only be found in the south of the Malay Peninsula. The Malayan tiger was only recognized as a subspecies in 2004. A research conducted by Luo and others, from the Laboratory of Genomic Diversity Study (part of the United States' National Cancer Institute), came up with the new subspecies classification. There are about 500 still-living Malayan tigers but they are endangered by poaching. These are the smallest subspecies on the mainland and even the second smallest living tiger subspecies. The males average at 120 kilograms while the females average at about 100 kilograms. Note that the Malayan tiger has a cultural significance in Malaysia as it has made it to the country's coat of arms. It is also the logo of Maybank, a Malaysian bank."
        maylayan.image = UIImage(named: "malayan.jpg")
        
        var southChina = Tiger()
        southChina.name = "South China"
        southChina.description = "Panthera tigris amoyensis, also known as the South China tiger, is actually the most endangered tiger subspecies. They are even more endangered than the Sumatran tigers, which are already heavily watched by conservationists. The South China tiger has even made the list of the world's ten most endangered species. The South China tiger belongs to a group of smaller tiger subspecies, with lengths spanning from 2.2 to 2.6 meters (87 to 100 inches). The range of the length of South China tigers is true for both male and female tigers. Males have a weight range of 127 to 177 kg (280 to 390 pounds); females, on the other hand, have a weight range of 100 to 118 kilograms (220 to 260 pounds)."
        southChina.image  = UIImage(named: "south-china.jpg")
        
        var bali = Tiger()
        bali.name = "Bali"
        bali.description = "Some tiger subspecies may still be mentioned in books but they have already been extinct as habitats continue to be destroyed. The Panthera tigris balica, which is popularly known as the Bali tiger, used to be limited to Bali, which is an Indonesian island. When it still existed, the Bali tiger was the smallest tiger subspecies, with the males weighing 90 to 100 kilograms (200 to 220 pounds) and the females weighing 65 to 80 kilograms (140 to 180 pounds). It is unfortunate that people can no longer appreciate the beauty of a Bali tiger in its compact size. The tigers have become extinct because of hunting. The last of its kind, which is an adult female, was believed to have been hunted and killed in Sumbar Kima. Back in September 37, 1937, there was no Bali tiger left captive in West Bali. However, today, it should be noted that the tiger is still regarded with importance in Balinese Hinduism."
        bali.image = UIImage(named: "bali.jpg")
        
        var caspian = Tiger()
        caspian.name = "Caspian"
        caspian.description = "The Panthera tigris virgata is better known as the Caspian tiger as well as under other names, such as the Hyrcanian or the Turan tiger. This tiger subspecies used to be found in sparse forests. It was also found south and west of the Caspian Sea. At least, it wast still sighted in the wild up to the early 1970s. The closest living subspecies to the Caspian tiger is the Amur tiger.."
        caspian.image = UIImage(named: "Caspian.jpg")
        
        var javan = Tiger()
        javan.name = "Javan"
        javan.description = "The Panthera tigris sondaica, otherwise known as the Javan tiger, used to live only on the island that it was named after. Sightings have been recorded up to the middle part of the 1970s. The tigers in these subspecies are bigger than Bali tigers, with the males weighing 100 to 140 kilograms (220 to 310 pounds) and the females weighing 75 to 115 kilograms (170 to 250 pounds). Sadly, the Javan tiger has no longer been sighted after 1979 when it was last seen around the Mount Betiri area. During a Mount Halimun Salak National Park expedition back in 1990, there was no definite evidence to support that there are still living Javan tigers."
        javan.image = UIImage(named: "javan.jpg")
        
        
        myTigers += [siberian, bengal, indochinese, maylayan, southChina, bali, caspian, javan]
        
        lblTiger.text = myTigers[0].name
        imgTiger.image = myTigers[0].image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNext(_ sender: AnyObject) {
        TigerIndex += 1
        
        if TigerIndex > 8 {
            TigerIndex = 0
        }
        let tiger = myTigers[TigerIndex]
   
        
        UIView.transition(with: self.view, duration: 2, options: UIViewAnimationOptions.transitionCrossDissolve,
                          animations: {
                            self.imgTiger.image = tiger.image
                            self.lblTiger.text = tiger.name
            }, completion: {
                (finished: Bool) -> () in
        })
        

    }
  
    @IBAction func btnPrevious(_ sender: AnyObject) {
        TigerIndex -= 1
        
        if TigerIndex < 0 {
            TigerIndex = 0
        }
        let tiger = myTigers[TigerIndex]
        
        
        UIView.transition(with: self.view, duration: 2, options: UIViewAnimationOptions.transitionCrossDissolve,
                          animations: {
                            self.imgTiger.image = tiger.image
                            self.lblTiger.text = tiger.name
            }, completion: {
                (finished: Bool) -> () in
        })
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
