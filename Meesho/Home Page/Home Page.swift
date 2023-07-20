//
//  Home Page.swift
//  Meesho
//
//  Created by Choudhary Dipika on 14/04/23.
//

import UIKit


struct cv4Model {
    var image : UIImage
    var description : String
    var price : Int
    var offer : String
    var delivery : String
}

class Home_Page: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mikeCameraLabel: UILabel!
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var offerImageView: UIImageView!
    @IBOutlet weak var viewImg1: UIImageView!
    @IBOutlet weak var viewImg2: UIImageView!
    @IBOutlet weak var viewImg3: UIImageView!
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var collectionView4: UICollectionView!
    
    var searchBarSize = UISearchBar()
    var cv1ImageArray = [UIImage(named: "all"),UIImage(named: "women1"),UIImage(named: "men1"),UIImage(named: "kids1"),UIImage(named: "electronics1"),UIImage(named: "kitchen1")]
    var cv1LabelArray = ["All","Women","Men","Kids","Electronics","Home & Kitchen"]
    var cv2ImageArray = [UIImage(named: "categories"),UIImage(named: "men"),UIImage(named: "saree"),UIImage(named: "kids"),UIImage(named: "lehengas"),UIImage(named: "kurti"),UIImage(named: "western"),UIImage(named: "kitchen"),UIImage(named: "jewellery"),UIImage(named: "home"),UIImage(named: "home_textiles"),UIImage(named: "footwear"),UIImage(named: "electronics"),UIImage(named: "beauty"),UIImage(named: "accessories")]
    var cv2LabelArray = ["Categories","Men","Saree","Kids","Lehengas","Kurti & Dress","Western Wear","Kitchen","Jewellery","Home","Home Textiles","Footwear","Electronics","Beauty","Accessories"]
    var filteredData = [String]()
    
    var tableViewLabelArray = ["Bestselling Products","Low Price Store", "New Arrivals", "Store In Focus"]
    
    var cv4Data = [cv4Model(image: UIImage(named: "p1")!, description: "Fashionable Idols & Figuriness", price: 244, offer: "Rs.199 with 3 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p2")!, description: "Fashionable wall hangers", price: 450, offer: "Rs.700 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p3")!, description: "Fashionable wall hangers", price: 354, offer: "Rs.700 with 3 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p4")!, description: "Fashionable wall hangers", price: 275, offer: "Rs.500 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p5")!, description: "Fashionable wall hangers", price: 439, offer: "Rs.680 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p6")!, description: "Fashionable wall hangers", price: 300, offer: "Rs.500 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p7")!, description: "Fashionable wall hangers", price: 490, offer: "Rs.750 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p8")!, description: "Fashionable wall hangers", price: 450, offer: "Rs.800 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p9")!, description: "Fashionable wall hangers", price: 650, offer: "Rs.1000 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p10")!, description: "Fashionable wall hangers", price: 450, offer: "Rs.700 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p11")!, description: "Fashionable wall hangers", price: 320, offer: "Rs.500 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p12")!, description: "Fashionable wall hangers", price: 280, offer: "Rs.450 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p13")!, description: "Fashionable wall hangers", price: 240, offer: "Rs.390 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p14")!, description: "Fashionable wall hangers", price: 450, offer: "Rs.500 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p15")!, description: "Fashionable wall hangers", price: 850, offer: "Rs.1400 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p16")!, description: "Fashionable wall hangers", price: 630, offer: "Rs.1600 with 3 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p17")!, description: "Fashionable wall hangers", price: 750, offer: "Rs.1200 with 3 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p18")!, description: "Fashionable wall hangers", price: 970, offer: "Rs.1600 with 2 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p19")!, description: "Fashionable wall hangers", price: 260, offer: "Rs.600 with 3 Special Offers", delivery: "Free Delivery"),cv4Model(image: UIImage(named: "p20")!, description: "Fashionable wall hangers", price: 730, offer: "Rs.1200 with 2 Special Offers", delivery: "Free Delivery")]
    
    //var cv3ImageArray = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setProperties()
        searchBar.delegate = self
        filteredData = cv2LabelArray
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "SignUp_page") as! SignUp_page
        present(navigate, animated: true)
    }
    
    @IBAction func cartButton(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "CartPage") as! CartPage
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func wishlistButton(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "MyProducts") as! MyProducts
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func setProperties()
    {
        mikeCameraLabel.layer.borderWidth = 0.5
        mikeCameraLabel.layer.borderColor = UIColor.darkGray.cgColor
        mikeCameraLabel.layer.cornerRadius = 5
        viewImg1.layer.cornerRadius = viewImg1.frame.height/2
        viewImg2.layer.cornerRadius = viewImg2.frame.height/2
        viewImg3.layer.cornerRadius = viewImg3.frame.height/2
        offerImageView.layer.masksToBounds = true
        offerImageView.layer.cornerRadius = 8
        offerImageView.layer.borderColor = UIColor.black.cgColor
        offerImageView.layer.borderWidth = 1
        searchBar.frame = CGRect(x: 0, y: 108, width: 284, height: 40)
    }
    
    func cv4Navigation(dataImg:UIImage,dataDesc:String,dataPrice:String,dataOffer:String) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "Cv4NavigationPage") as! Cv4NavigationPage
        navigate.img = dataImg
        navigate.desc = dataDesc
        navigate.price = dataPrice
        navigate.offer = dataOffer
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}

// MARK Search Bar

extension Home_Page: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = cv2LabelArray.filter{ $0.lowercased().contains(searchText.lowercased()) }
        collectionView2.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        filteredData = cv2LabelArray
        collectionView2.reloadData()
        searchBar.resignFirstResponder()
    }
}

// MARK = Collection View

extension Home_Page: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1
        {
            return cv1ImageArray.count
        }
        else if collectionView == self.collectionView2
        {
            return filteredData.count
        }
        else if collectionView == self.collectionView4
        {
            return cv4Data.count
        }
        else
        {
            return 10
        }

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1
        {
            let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "CV1Cell", for: indexPath) as! CollectionViewCell1
            cell.cv1Image.image = cv1ImageArray[indexPath.row]
            cell.cv1Label.text = cv1LabelArray[indexPath.row]
            return cell
        }
        else if collectionView == self.collectionView2
        {
            let cell = collectionView2.dequeueReusableCell(withReuseIdentifier: "CV2Cell", for: indexPath) as! CollectionViewCell2
            cell.cv2Image.image = cv2ImageArray[indexPath.row]
            //cell.cv2Label.text = cv2LabelArray[indexPath.row]
            cell.cv2Label.text = filteredData[indexPath.row]
            cell.cv2Image.layer.cornerRadius = cell.cv2Image.frame.height/2
            return cell
        }
        else
        {
            let cell = collectionView4.dequeueReusableCell(withReuseIdentifier: "CV4Cell", for: indexPath) as! CollectionView4Cell
            let cv4Data = cv4Data[indexPath.row]
            cell.cv4Image.image = cv4Data.image
            cell.cv4Description.text = cv4Data.description
            cell.cv4Price.text = "\(cv4Data.price)"
            cell.cv4Offer.text = cv4Data.offer
            cell.freeDelivery.text = "Free Delivery"
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cv4Data = cv4Data[indexPath.row]
        if collectionView == collectionView4
        {
            cv4Navigation(dataImg: cv4Data.image, dataDesc: cv4Data.description, dataPrice: "\(cv4Data.price)", dataOffer: cv4Data.offer)
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView1
        {
            return CGSize(width: 145, height: 38)
        }
        else if collectionView == self.collectionView2
        {
            return CGSize(width: 98, height: 116)
        }
        else
        {
            return CGSize(width: 195, height: 350)
        }

    }

}

//-----------------------------------------Table View------------------------------------------
extension Home_Page: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView1.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.tableviewlabel.text = tableViewLabelArray[indexPath.row]
        //let cell12 = cell.collectionView3.dequeueReusableCell(withReuseIdentifier: "CV3Cell", for: indexPath) as! CollectionViewCell3
        //cell12.backgroundColor = .blue
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    
}
