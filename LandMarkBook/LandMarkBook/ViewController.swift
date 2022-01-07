//
//  ViewController.swift
//  LandMarkBook
//
//  Created by user209356 on 1/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    var choosenlandmark = ""
    var choosenimage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionView.dataSource = self
        CollectionView.delegate = self
        CollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        print(sehirler[0].title)
        
        navigationItem.title = "Şehirler"
    
    }
    

}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sehirler.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SehirCollectionViewCell", for: indexPath) as! SehirCollectionViewCell
        cell.setup(with: sehirler[indexPath.row])
        
        return cell
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 350)
    }
    
    
}
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        choosenlandmark = sehirler[indexPath.row].title
        choosenimage = sehirler[indexPath.row].image
        performSegue(withIdentifier: "toImageViewController", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.secilenresim = choosenimage
            destinationVC.secilensehir = choosenlandmark
        }
    }
    
}


