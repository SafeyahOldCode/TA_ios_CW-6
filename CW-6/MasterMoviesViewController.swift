//
//  MasterMoviesViewController.swift
//  CW-6
//
//  Created by Hasan Alsaffar on 6/8/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MasterMoviesViewController: UIViewController {
    
    var marvelimages = MarvelMovieData
    var DCimages = DCMovieData
    
    
    var selectedMovie: moviesModel = moviesModel(name: "", release: 2000, actors: [""], rating: 0.0, rated: "PG")
    
    
    
    
    
    @IBOutlet weak var Marvelimg0: UIButton!
    @IBOutlet weak var Marvelimg1: UIButton!
    @IBOutlet weak var Marvelimg2: UIButton!
    @IBOutlet weak var Marvelimg3: UIButton!
    @IBOutlet weak var Marvelimg4: UIButton!
    @IBOutlet weak var Marvelimg5: UIButton!
    
    @IBOutlet weak var DCImg0: UIButton!
    @IBOutlet weak var DCImg1: UIButton!
    @IBOutlet weak var DCImg2: UIButton!
    @IBOutlet weak var DCImg3: UIButton!
    @IBOutlet weak var DCImg4: UIButton!
    @IBOutlet weak var DCImg5: UIButton!
    
    
    
    @IBAction func marvelImagesButton(_ sender: UIButton) {
        
        print("Marvel",sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)

        
    }
    
    
    
    @IBAction func DCImageButton(_ sender: UIButton) {
        print("DC",sender.tag)
        
        selectedMovie = DCMovieData[sender.tag]
        
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let movieController = segue.destination as? MovieDetailsViewController else {
            fatalError()
        }
        
        movieController.movieData = selectedMovie
        
    }
    
    
    func setMarvelImages(){
        Marvelimg0.setImage(UIImage(named:marvelimages[0].movieName), for: .normal)
        
        Marvelimg1.setImage(UIImage(named:marvelimages[1].movieName), for: .normal)
        Marvelimg2.setImage(UIImage(named:marvelimages[2].movieName), for: .normal)
        Marvelimg3.setImage(UIImage(named:marvelimages[3].movieName), for: .normal)
        Marvelimg4.setImage(UIImage(named:marvelimages[4].movieName), for: .normal)
        Marvelimg5.setImage(UIImage(named:marvelimages[5].movieName), for: .normal)
        
        
    }
    
    
    func setDCImages(){
        DCImg0.setImage(UIImage(named:DCimages[0].movieName), for: .normal)
        DCImg1.setImage(UIImage(named:DCimages[1].movieName), for: .normal)
        DCImg2.setImage(UIImage(named:DCimages[2].movieName), for: .normal)
        DCImg3.setImage(UIImage(named:DCimages[3].movieName), for: .normal)
        DCImg4.setImage(UIImage(named:DCimages[4].movieName), for: .normal)
        DCImg5.setImage(UIImage(named:DCimages[5].movieName), for: .normal)
        
        
    }
    

    
}
