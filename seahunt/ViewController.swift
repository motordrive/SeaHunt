//
//  ViewController.swift
//  seahunt
//

import UIKit
import MapKit
import MobileCoreServices
import CoreLocation
import Foundation

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MKMapViewDelegate, CLLocationManagerDelegate, UIPopoverPresentationControllerDelegate, UITextFieldDelegate{
    
    var locationManager: CLLocationManager!
    
    
    //MARK: Login Properties
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var newUserName: UITextField!
    @IBOutlet weak var newUserPassword: UITextField!
    @IBOutlet weak var newUserPasswordRewrite: UITextField!
    
    static var currentUser: String? = "hello"
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var changePasswordOld: UITextField!
    @IBOutlet weak var changePasswordNew: UITextField!
    @IBOutlet weak var changePasswordNew2: UITextField!
    
    //MARK: Progress Outlets
    
    @IBOutlet weak var check1W: UIImageView!
    @IBOutlet weak var check2W: UIImageView!
    @IBOutlet weak var check3W: UIImageView!
    @IBOutlet weak var check4W: UIImageView!
    @IBOutlet weak var lock1W: UIImageView!
    @IBOutlet weak var lock2W: UIImageView!
    @IBOutlet weak var lock3W: UIImageView!
    @IBOutlet weak var lock4W: UIImageView!
    
    @IBOutlet weak var check1N: UIImageView!
    @IBOutlet weak var check2N: UIImageView!
    @IBOutlet weak var check3N: UIImageView!
    @IBOutlet weak var check4N: UIImageView!
    @IBOutlet weak var lock1N: UIImageView!
    @IBOutlet weak var lock2N: UIImageView!
    @IBOutlet weak var lock3N: UIImageView!
    @IBOutlet weak var lock4N: UIImageView!
    
    
    @IBOutlet weak var check1DT: UIImageView!
    @IBOutlet weak var check2DT: UIImageView!
    @IBOutlet weak var check3DT: UIImageView!
    @IBOutlet weak var check4DT: UIImageView!
    @IBOutlet weak var lock1DT: UIImageView!
    @IBOutlet weak var lock2DT: UIImageView!
    @IBOutlet weak var lock3DT: UIImageView!
    @IBOutlet weak var lock4DT: UIImageView!
    
    
    //MARK: DownTown Properties
    @IBOutlet weak var welcomeStartButton: UIButton!
    
    @IBOutlet weak var userAnswer11: UITextField!
    @IBOutlet weak var submitButton11: UIButton!
    
    @IBOutlet weak var userAnswer12: UITextField!
    @IBOutlet weak var submitButton12: UIButton!
    
    @IBOutlet weak var userAnswer13: UITextField!
    @IBOutlet weak var submitButton13: UIButton!
    
    @IBOutlet weak var mapView1: MKMapView!
    
    
    @IBOutlet weak var cameraImage1: UIImageView!
    var newMedia: Bool?
    
    @IBOutlet weak var userAnswer21: UITextField!
    @IBOutlet weak var submitButton21: UIButton!
    
    @IBOutlet weak var userAnswer22: UITextField!
    @IBOutlet weak var submitButton22: UIButton!
    
    @IBOutlet weak var userAnswer23: UITextField!
    @IBOutlet weak var submitButton23: UIButton!
    
    @IBOutlet weak var mapView2: MKMapView!
    
    @IBOutlet weak var cameraImage2: UIImageView!
    
    @IBOutlet weak var userAnswer31: UITextField!
    @IBOutlet weak var submitButton31: UIButton!
    
    @IBOutlet weak var userAnswer32: UITextField!
    @IBOutlet weak var submitButton32: UIButton!
    
    @IBOutlet weak var userAnswer33: UITextField!
    @IBOutlet weak var submitButton33: UIButton!
    
    @IBOutlet weak var mapView3: MKMapView!
    
    @IBOutlet weak var cameraImage3: UIImageView!
    
    @IBOutlet weak var userAnswer41: UITextField!
    @IBOutlet weak var submitButton41: UIButton!
    
    @IBOutlet weak var userAnswer42: UITextField!
    @IBOutlet weak var submitButton42: UIButton!
    
    @IBOutlet weak var userAnswer43: UITextField!
    @IBOutlet weak var submitButton43: UIButton!
    
    @IBOutlet weak var mapView4: MKMapView!
    
    @IBOutlet weak var cameraImage4: UIImageView!
    
    
    //MARK: West Properties
    @IBOutlet weak var userAnswer11W: UITextField!
    @IBOutlet weak var submitButton11W: UIButton!
    
    @IBOutlet weak var userAnswer12W: UITextField!
    @IBOutlet weak var submitButton12W: UIButton!
    
    @IBOutlet weak var userAnswer13W: UITextField!
    @IBOutlet weak var submitButton13W: UIButton!
    
    @IBOutlet weak var mapView1W: MKMapView!
    
    @IBOutlet weak var cameraImage1W: UIImageView!
    
    @IBOutlet weak var userAnswer21W: UITextField!
    @IBOutlet weak var submitButton21W: UIButton!
    
    @IBOutlet weak var userAnswer22W: UITextField!
    @IBOutlet weak var submitButton22W: UIButton!
    
    @IBOutlet weak var userAnswer23W: UITextField!
    @IBOutlet weak var submitButton23W: UIButton!
    
    @IBOutlet weak var mapView2W: MKMapView!
    
    @IBOutlet weak var cameraImage2W: UIImageView!
    
    @IBOutlet weak var userAnswer31W: UITextField!
    @IBOutlet weak var submitButton31W: UIButton!
    
    @IBOutlet weak var userAnswer32W: UITextField!
    @IBOutlet weak var submitButton32W: UIButton!
    
    @IBOutlet weak var userAnswer33W: UITextField!
    @IBOutlet weak var submitButton33W: UIButton!
    
    @IBOutlet weak var mapView3W: MKMapView!
    
    @IBOutlet weak var cameraImage3W: UIImageView!
    
    @IBOutlet weak var userAnswer41W: UITextField!
    @IBOutlet weak var submitButton41W: UIButton!
    
    @IBOutlet weak var userAnswer42W: UITextField!
    @IBOutlet weak var submitButton42W: UIButton!
    
    @IBOutlet weak var userAnswer43W: UITextField!
    @IBOutlet weak var submitButton43W: UIButton!
    
    @IBOutlet weak var mapView4W: MKMapView!
    
    @IBOutlet weak var cameraImage4W: UIImageView!
    
    
    
    
    
    //MARK: North Properties
    @IBOutlet weak var userAnswer11N: UITextField!
    @IBOutlet weak var submitButton11N: UIButton!
    
    @IBOutlet weak var userAnswer12N: UITextField!
    @IBOutlet weak var submitButton12N: UIButton!
    
    @IBOutlet weak var userAnswer13N: UITextField!
    @IBOutlet weak var submitButton13N: UIButton!
    
    @IBOutlet weak var mapView1N: MKMapView!
    
    @IBOutlet weak var cameraImage1N: UIImageView!
    
    @IBOutlet weak var userAnswer21N: UITextField!
    @IBOutlet weak var submitButton21N: UIButton!
    
    @IBOutlet weak var userAnswer22N: UITextField!
    @IBOutlet weak var submitButton22N: UIButton!
    
    @IBOutlet weak var userAnswer23N: UITextField!
    @IBOutlet weak var submitButton23N: UIButton!
    
    @IBOutlet weak var mapView2N: MKMapView!
    
    @IBOutlet weak var cameraImage2N: UIImageView!
    
    @IBOutlet weak var userAnswer31N: UITextField!
    @IBOutlet weak var submitButton31N: UIButton!
    
    @IBOutlet weak var userAnswer32N: UITextField!
    @IBOutlet weak var submitButton32N: UIButton!
    
    
    @IBOutlet weak var userAnswer33N: UITextField!
    @IBOutlet weak var submitButton33N: UIButton!
    
    @IBOutlet weak var mapView3N: MKMapView!
    
    @IBOutlet weak var cameraImage3N: UIImageView!
    
    @IBOutlet weak var userAnswer41N: UITextField!
    @IBOutlet weak var submitButton41N: UIButton!
    
    @IBOutlet weak var userAnswer42N: UITextField!
    @IBOutlet weak var submitButton42N: UIButton!
    
    @IBOutlet weak var userAnswer43N: UITextField!
    @IBOutlet weak var submitButton43N: UIButton!
    
    @IBOutlet weak var mapView4N: MKMapView!
    
    @IBOutlet weak var cameraImage4N: UIImageView!
    
    
    //MARK: Image
    var image: Image
    var connection: JavaServerConnect
    
    override init(nibName: String?, bundle nibBundle: Bundle?)
    {
        (image, connection) = ViewController.factory()
        
        super.init(nibName: nibName, bundle: nibBundle)
    }
    
    required init?(coder decoder: NSCoder)
    {
        (image, connection) = ViewController.factory()
        super.init(coder: decoder)
    }
    
    private static func factory() -> (Image, JavaServerConnect)
    {
        let image = StandardImage()
        let connection = JavaServerConnect()
        return (image, connection)
    }
    
    
    //MARK: Functions
    
    func setMap(mapview: MKMapView!, title: String, subtitle: String, latitude: CLLocationDegrees, longitude: CLLocationDegrees)
    {
        if(mapview != nil){
            let location = CLLocationCoordinate2D(latitude:latitude, longitude:longitude)
            
            let span = MKCoordinateSpanMake(0.05, 0.05)
            let region = MKCoordinateRegion(center: location, span: span)
            mapview.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = title
            annotation.subtitle = subtitle
            mapview.addAnnotation(annotation)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        determineMyCurrentLocation()
        
        //Downtown Seattle
        setMap(mapview:mapView1, title:"Gum Wall", subtitle:"Pike Place Market", latitude:47.604830914, longitude: -122.33749865)
        setMap(mapview:mapView2, title:"Great Wheel", subtitle:"Seattle Waterfront", latitude:47.6062, longitude: -122.3425)
        setMap(mapview:mapView3, title:"Space Needle", subtitle:"Seattle", latitude:47.620422, longitude:-122.349358)
        setMap(mapview: mapView4, title: "Olympic Sculpture Park", subtitle: "Seattle Waterfront", latitude: 47.6166, longitude: -122.3553)
        
        
        //West Seattle
        setMap(mapview:mapView1W, title:"Statue of Liberty Plaza", subtitle:"Alki Beach", latitude:47.5793, longitude:-122.4106)
        setMap(mapview:mapView2W, title:"Alki Point Lighthouse", subtitle:"Alki Beach", latitude:47.5763, longitude:-122.4206)
        setMap(mapview:mapView3W, title:"Lincoln Park", subtitle:"West Seattle", latitude:47.529198, longitude:-122.396774)
        setMap(mapview: mapView4W, title: "Hamilton Viewpoint", subtitle: "West Seattle", latitude: 47.5806, longitude: -122.3764)
        
        
        //North Seattle
        setMap(mapview:mapView1N, title:"Ballard Locks", subtitle:"Ballard", latitude:47.6592773629, longitude:-122.391591767)
        setMap(mapview:mapView2N, title:"Fremont Troll", subtitle:"Fremont", latitude:47.650955, longitude:-122.34728)
        setMap(mapview:mapView3N, title:"Gas Works Park", subtitle:"North Seattle", latitude:47.645630, longitude:-122.334351)
        setMap(mapview: mapView4N, title: "Woodland Park Zoo", subtitle: "North Seattle", latitude: 47.6682, longitude: -122.3508)
        
        if lock1DT != nil
        {
            self.profileProgress(userName: ViewController.currentUser!)
        }
        
        if userNameLabel != nil
        {
            self.userNameLabel.text = ViewController.currentUser! + "!"
        }
    }
    
    func determineMyCurrentLocation() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
            //locationManager.startUpdatingHeading()
        }
    }
    
    func profileProgress(userName: String)
    {
        //let progress: String = connection.getProgress(userName: userName)
        
        if connection.getDTProgress() == "0"
        {
            lock1DT.isHidden = false
            check1DT.isHidden = true
            lock2DT.isHidden = false
            check2DT.isHidden = true
            lock3DT.isHidden = false
            check3DT.isHidden = true
            lock4DT.isHidden = false
            check4DT.isHidden = true
        }
        
        if connection.getDTProgress() == "1"
        {
            lock1DT.isHidden = true
            check1DT.isHidden = false
        }
        
        if (connection.getDTProgress() == "2")
        {
            lock1DT.isHidden = true
            check1DT.isHidden = false
            lock2DT.isHidden = true
            check2DT.isHidden = false
        }
        
        if (connection.getDTProgress() == "3")
        {
            lock1DT.isHidden = true
            check1DT.isHidden = false
            lock2DT.isHidden = true
            check2DT.isHidden = false
            lock3DT.isHidden = true
            check3DT.isHidden = false
        }
        
        if (connection.getDTProgress() == "4")
        {
            lock1DT.isHidden = true
            check1DT.isHidden = false
            lock2DT.isHidden = true
            check2DT.isHidden = false
            lock3DT.isHidden = true
            check3DT.isHidden = false
            lock4DT.isHidden = true
            check4DT.isHidden = false
        }
        
        
        if (connection.getNProgress() == "0")
        {
            lock1N.isHidden = false
            check1N.isHidden = true
            lock2N.isHidden = false
            check2N.isHidden = true
            lock3N.isHidden = false
            check3N.isHidden = true
            lock4N.isHidden = false
            check4N.isHidden = true
        }
        if (connection.getNProgress() == "1")
        {
            lock1N.isHidden = true
            check1N.isHidden = false
        }
        
        if (connection.getNProgress() == "2")
        {
            lock1N.isHidden = true
            check1N.isHidden = false
            lock2N.isHidden = true
            check2N.isHidden = false
        }
        
        if (connection.getNProgress() == "3")
        {
            lock1N.isHidden = true
            check1N.isHidden = false
            lock2N.isHidden = true
            check2N.isHidden = false
            lock3N.isHidden = true
            check3N.isHidden = false
        }
        
        if (connection.getNProgress() == "4")
        {
            lock1N.isHidden = true
            check1N.isHidden = false
            lock2N.isHidden = true
            check2N.isHidden = false
            lock3N.isHidden = true
            check3N.isHidden = false
            lock4N.isHidden = true
            check4N.isHidden = false
        }
        
        
        if (connection.getWProgress() == "0")
        {
            lock1W.isHidden = false
            check1W.isHidden = true
            lock2W.isHidden = false
            check2W.isHidden = true
            lock3W.isHidden = false
            check3W.isHidden = true
            lock4W.isHidden = false
            check4W.isHidden = true
        }
        
        if (connection.getWProgress() == "1")
        {
            lock1W.isHidden = true
            check1W.isHidden = false
        }
        
        if (connection.getWProgress() == "2")
        {
            lock1W.isHidden = true
            check1W.isHidden = false
            lock2W.isHidden = true
            check2W.isHidden = false
        }
        
        if (connection.getWProgress() == "3")
        {
            lock1W.isHidden = true
            check1W.isHidden = false
            lock2W.isHidden = true
            check2W.isHidden = false
            lock3W.isHidden = true
            check3W.isHidden = false
        }
        
        if (connection.getWProgress() == "4")
        {
            lock1W.isHidden = true
            check1W.isHidden = false
            lock2W.isHidden = true
            check2W.isHidden = false
            lock3W.isHidden = true
            check3W.isHidden = false
            lock4W.isHidden = true
            check4W.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Hint")
        {
            let popoverViewController = segue.destination
            popoverViewController.modalPresentationStyle = UIModalPresentationStyle.popover
            popoverViewController.popoverPresentationController!.delegate = self
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle
    {
        return UIModalPresentationStyle.none
    }
    
    /*private func imagePickerControlls(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
        image.imagePickerController(viewController: self, picture: cameraImage1, newMedia: newMedia, didFinishPickingMediaWithInfo: info)
    
    } */
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let mediaType = info[UIImagePickerControllerMediaType] as! NSString
        self.dismiss(animated: true, completion: nil)
        if mediaType.isEqual(to: kUTTypeImage as String)
        {
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            func setNewImage(imageView: UIImageView!)
            {
                if imageView != nil
                {
                    imageView.contentMode = UIViewContentMode.scaleAspectFit
                    imageView.image = image
                }
            }
            setNewImage(imageView: cameraImage1)
            setNewImage(imageView: cameraImage2)
            setNewImage(imageView: cameraImage3)
            setNewImage(imageView: cameraImage4)
            setNewImage(imageView: cameraImage1W)
            setNewImage(imageView: cameraImage2W)
            setNewImage(imageView: cameraImage3W)
            setNewImage(imageView: cameraImage4W)
            setNewImage(imageView: cameraImage1N)
            setNewImage(imageView: cameraImage2N)
            setNewImage(imageView: cameraImage3N)
            setNewImage(imageView: cameraImage4N)
            if newMedia == true
            {
                UIImageWriteToSavedPhotosAlbum(image, self, #selector(ViewController.image(image:didFinishSavingWithError:contextInfo:)), nil)
            }
        }
    }
    
    func image(image: UIImage, didFinishSavingWithError error: NSErrorPointer, contextInfo: UnsafeRawPointer)
    {
        if error != nil
        {
            let alert = UIAlertController(title: "Save Failed", message: "Failed to save image", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        image.dismiss(picker, self)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.isFirstResponder
        {
            self.view.endEditing(true)
            self.resignFirstResponder()
        }
        return false
    }
    
    func useCamera()
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
        {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = false
            
            self.present(imagePicker, animated: true, completion: nil)
            newMedia = true
        }
    }
    
    
    //MARK: Login
    
  
    @IBAction func login(_ sender: UIButton) {
    
    print(connection.checkLogin(userName: userName.text!, password: password.text!))
    if (connection.checkLogin(userName: userName.text!, password: password.text!) == "true")
        {
            ViewController.currentUser = userName.text!
            performSegue(withIdentifier: "returningLogin", sender: self)
        }
        else
        {
            //performSegue(withIdentifier: "userDoesNotExist", sender: self)
            let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "userDoesNotExist") as! PopUpViewController
            self.addChildViewController(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParentViewController: self)
            
        }
    }
    
    
    
    @IBAction func createNewUser(_ sender: UIButton) {
        
        if (connection.findUser(userName: newUserName.text!)) == "false"
        {
            if newUserPassword.text == newUserPasswordRewrite.text
            {
                connection.createUser(userName: newUserName.text!, password: newUserPassword.text!)
                print(connection.getAllUsers())
                performSegue(withIdentifier: "newToLogin", sender: self)
            }
        }
        else
        {
            //performSegue(withIdentifier: "userTaken", sender: self)
            //print("username taken")
            let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "userTaken") as! PopUpViewController
            self.addChildViewController(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParentViewController: self)
        }
    }

    @IBAction func updateUser(_ sender: UIButton) {
        if connection.checkLogin(userName: ViewController.currentUser!, password: changePasswordOld.text!) == "true"
        {
            if changePasswordNew.text! == changePasswordNew2.text!
            {
                connection.updateUser(userName: ViewController.currentUser!, newPassword: changePasswordNew.text!)
            }
        }
        
        performSegue(withIdentifier: "updateToProfile", sender: self)
    }
    
    //MARK: Starting Location
    
    @IBAction func startDT(_ sender: UIButton) {
        let progressDT: Character = connection.getDTProgress()
        
        if (progressDT == "0" || progressDT == "4")
        {
            performSegue(withIdentifier: "startDT1", sender: self)
        }
        
        if progressDT == "1"
        {
            performSegue(withIdentifier: "startDT2", sender: self)
        }
        
        if progressDT == "2"
        {
            performSegue(withIdentifier: "startDT3", sender: self)
        }
        
        if progressDT == "3"
        {
            performSegue(withIdentifier: "startDT4", sender: self)
        }
        
        
    }
    
    @IBAction func startN(_ sender: UIButton) {
        
        let progressN: Character = connection.getNProgress()
        
        if (progressN == "0" || progressN == "4")
        {
            performSegue(withIdentifier: "startN1", sender: self)
        }
        
        if progressN == "1"
        {
            performSegue(withIdentifier: "startN2", sender: self)
        }
        
        if progressN == "2"
        {
            performSegue(withIdentifier: "startN3", sender: self)
        }
        
        if progressN == "3"
        {
            performSegue(withIdentifier: "startN4", sender: self)
        }
    }
    
    @IBAction func startW(_ sender: UIButton) {
        
        let progressW: Character = connection.getWProgress()
        
        if (progressW == "0" || progressW == "4")
        {
            performSegue(withIdentifier: "startW1", sender: self)
        }
        
        if progressW == "1"
        {
            performSegue(withIdentifier: "startW2", sender: self)
        }
        
        if progressW == "2"
        {
            performSegue(withIdentifier: "startW3", sender: self)
        }
        
        if progressW == "3"
        {
            performSegue(withIdentifier: "startW4", sender: self)
        }
    }
    
    
    
    //MARK: Progress
    
    
    @IBAction func resetProgress(_ sender: UIButton) {
        connection.resetProgress(userName: ViewController.currentUser!)
        self.viewDidLoad()
    }
    
    @IBAction func setProgress1(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 0, riddle: 0)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    @IBAction func setProgress2(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 0, riddle: 1)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
   
    
    
    @IBAction func setProgress3(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 0, riddle: 2)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    @IBAction func setProgress4(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 0, riddle: 3)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    @IBAction func setProgress1N(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 1, riddle: 0)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    @IBAction func setProgress2N(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 1, riddle: 1)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    @IBAction func setProgress3N(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 1, riddle: 2)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    @IBAction func setProgress4N(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 1, riddle: 3)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    @IBAction func setProgress1W(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 2, riddle: 0)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    @IBAction func setProgress2W(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 2, riddle: 1)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    @IBAction func setProgress3W(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 2, riddle: 2)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    @IBAction func setProgress4W(_ sender: UIButton) {
        connection.setProgress(userName: ViewController.currentUser!, location: 2, riddle: 3)
        let myString: String = connection.getProgress(userName: ViewController.currentUser!)
        print(myString)
    }
    
    
    
    //MARK: DownTown Actions
    
    
    
    func testRiddle1Answer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("gum wall") == ComparisonResult.orderedSame || userAnswer.text?.caseInsensitiveCompare("the gum wall") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit11(_ sender: UIButton) {
        
        if testRiddle1Answer(userAnswer: userAnswer11)
        {
            performSegue(withIdentifier: "riddle1:1ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:1ToRiddle1:2", sender: self)
        }
    }
    
    
    @IBAction func submit12(_ sender: UIButton) {
        if testRiddle1Answer(userAnswer: userAnswer12)
        {
            performSegue(withIdentifier: "riddle1:2ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:2ToRiddle1:3", sender: self)
        }
    }
    
    
    @IBAction func submit13(_ sender: UIButton) {
        if testRiddle1Answer(userAnswer: userAnswer13)
        {
            performSegue(withIdentifier: "riddle1:3ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:3ToRiddle1:4", sender: self)
        }
    }
    
    
    @IBAction func useCamera1(_ sender: Any) {
        self.useCamera()
    }
    
    
    func testRiddle2Answer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("great wheel") == ComparisonResult.orderedSame || userAnswer.text?.caseInsensitiveCompare("the great wheel") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit21(_ sender: UIButton) {
        if testRiddle2Answer(userAnswer: userAnswer21)
        {
            performSegue(withIdentifier: "riddle2:1ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:1ToRiddle2:2", sender: self)
        }
    }
    
    @IBAction func submit22(_ sender: UIButton) {
        if testRiddle2Answer(userAnswer: userAnswer22)
        {
            performSegue(withIdentifier: "riddle2:2ToCongrats", sender: self)
        }
        else{
            performSegue(withIdentifier: "riddle2:2ToRiddle2:3", sender: self)
        }
    }
    
    @IBAction func submit23(_ sender: UIButton) {
        if testRiddle2Answer(userAnswer: userAnswer23)
        {
            performSegue(withIdentifier: "riddle2:3ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:3ToRiddle2:4", sender: self)
        }
    }
    
    
    @IBAction func useCamera2(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle3Answer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("space needle") == ComparisonResult.orderedSame || userAnswer.text?.caseInsensitiveCompare("the space needle") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    
    @IBAction func submit31(_ sender: UIButton) {
        if testRiddle3Answer(userAnswer: userAnswer31)
        {
            performSegue(withIdentifier: "riddle3:1ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:1ToRiddle3:2", sender: self)
        }
    }
    
    @IBAction func submit32(_ sender: UIButton) {
        if testRiddle3Answer(userAnswer: userAnswer32)
        {
            performSegue(withIdentifier: "riddle3:2ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:2ToRiddle3:3", sender: self)
        }
    }
    
    
    @IBAction func submit33(_ sender: UIButton) {
        if testRiddle3Answer(userAnswer: userAnswer33)
        {
            performSegue(withIdentifier: "riddle3:3ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:3ToRiddle3:4", sender: self)
        }
    }
    
    
    @IBAction func useCamera3(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle4Answer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("olympic sculpture park") == ComparisonResult.orderedSame || userAnswer.text?.caseInsensitiveCompare("the olympic sculpture park") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit41(_ sender: UIButton) {
        if testRiddle4Answer(userAnswer: userAnswer41)
        {
            performSegue(withIdentifier: "riddle4:1ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:1ToRiddle4:2", sender: self)
        }
    }
    
    
    @IBAction func submit42(_ sender: UIButton) {
        if testRiddle4Answer(userAnswer: userAnswer42)
        {
            performSegue(withIdentifier: "riddle4:2ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:2ToRiddle4:3", sender: self)
        }
    }
    
    
    @IBAction func submit43(_ sender: UIButton) {
        if testRiddle4Answer(userAnswer: userAnswer43)
        {
            performSegue(withIdentifier: "riddle4:3ToCongrats", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:3ToRiddle4:4", sender: self)
        }
    }
    
    @IBAction func useCamera4(_ sender: Any) {
        self.useCamera()
    }
    
    
    
    
    //MARK: West Actions
    
    func testRiddle1WAnswer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("statue of liberty plaza") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit11W(_ sender: UIButton) {
        if testRiddle1WAnswer(userAnswer: userAnswer11W)
        {
            samplePingToServer(userName: "you got it!");
            performSegue(withIdentifier: "riddle1:1ToCongratsW", sender: self)
        }
        else
        {
            samplePingToServer(userName: "fail.");
            performSegue(withIdentifier: "riddle1:1ToRiddle1:2W", sender: self)
        }
    }
    
    @IBAction func submit12W(_ sender: UIButton)
    {
        if testRiddle1WAnswer(userAnswer: userAnswer12W)
        {
            performSegue(withIdentifier: "riddle1:2ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:2ToRiddle1:3W", sender: self)
        }
        
    }
    
    
    @IBAction func submit13W(_ sender: UIButton) {
        if testRiddle1WAnswer(userAnswer: userAnswer13W)
        {
            performSegue(withIdentifier: "riddle1:3ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:3ToRiddle1:4W", sender: self)
        }
    }
    
    @IBAction func useCamera1W(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle2WAnswer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("lighthouse") == ComparisonResult.orderedSame || userAnswer.text?.caseInsensitiveCompare("alki point lighthouse") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit21W(_ sender: UIButton) {
        if testRiddle2WAnswer(userAnswer: userAnswer21W)        {
            performSegue(withIdentifier: "riddle2:1ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:1ToRiddle2:2W", sender: self)
        }
    }
    
    
    @IBAction func submit22W(_ sender: UIButton) {
        if testRiddle2WAnswer(userAnswer: userAnswer22W)
        {
            performSegue(withIdentifier: "riddle2:2ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:2ToRiddle2:3W", sender: self)
        }
    }
    
    @IBAction func submit23W(_ sender: UIButton) {
        if testRiddle2WAnswer(userAnswer: userAnswer23W)
        {
            performSegue(withIdentifier: "riddle2:3ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:3ToRiddle2:4W", sender: self)
        }
    }
    
    @IBAction func useCamera2W(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle3WAnswer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("lincoln park") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit31W(_ sender: UIButton) {
        if testRiddle3WAnswer(userAnswer: userAnswer31W)
        {
            performSegue(withIdentifier: "riddle3:1ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:1ToRiddle3:2W", sender: self)
        }
    }
    
    
    
    @IBAction func submit32W(_ sender: UIButton) {
        if testRiddle3WAnswer(userAnswer: userAnswer32W)
        {
            performSegue(withIdentifier: "riddle3:2ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:2ToRiddle3:3W", sender: self)
        }
    }
    
    
    @IBAction func submit33W(_ sender: UIButton) {
        if testRiddle3WAnswer(userAnswer: userAnswer33W)
        {
            performSegue(withIdentifier: "riddle3:3ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:3ToRiddle3:4W", sender: self)
        }
    }
    
    @IBAction func useCamera3W(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle4WAnswer(userAnswer: UITextField) -> Bool
    {
        if userAnswer.text?.caseInsensitiveCompare("hamilton viewpoint") == ComparisonResult.orderedSame
        {
            return true
        }
        return false
    }
    
    
    @IBAction func submit41W(_ sender: UIButton) {
        if testRiddle4WAnswer(userAnswer: userAnswer41W)
        {
            performSegue(withIdentifier: "riddle4:1ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:1ToRiddle4:2W", sender: self)
        }
    }
    
    
    @IBAction func submit42W(_ sender: UIButton) {
        if testRiddle4WAnswer(userAnswer: userAnswer42W)
        {
            performSegue(withIdentifier: "riddle4:2ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:2ToRiddle4:3W", sender: self)
        }
    }
    
    @IBAction func submit43W(_ sender: UIButton) {
        if testRiddle4WAnswer(userAnswer: userAnswer43W)
        {
            performSegue(withIdentifier: "riddle4:3ToCongratsW", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:3ToRiddle4:4W", sender: self)
        }
    }
    
    @IBAction func useCamera4W(_ sender: Any) {
        self.useCamera()
    }
    
    
    
    //MARK: North Actions
    
    func testRiddle1NAnswer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("ballard locks") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit11N(_ sender: UIButton) {
        if testRiddle1NAnswer(userAnswer: userAnswer11N)
        {
            performSegue(withIdentifier: "riddle1:1ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:1ToRiddle1:2N", sender: self)
        }
    }
    
    
    @IBAction func submit12N(_ sender: UIButton) {
        if testRiddle1NAnswer(userAnswer: userAnswer12N)
        {
            performSegue(withIdentifier: "riddle1:2ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:2ToRiddle1:3N", sender: self)
        }
    }
    
    
    @IBAction func submit13N(_ sender: UIButton) {
        if testRiddle1NAnswer(userAnswer: userAnswer13N)
        {
            performSegue(withIdentifier: "riddle1:3ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle1:3ToRiddle1:4N", sender: self)
        }
    }
    
    @IBAction func useCamera1N(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle2NAnswer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("Fremont Troll") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit21N(_ sender: UIButton) {
        if testRiddle2NAnswer(userAnswer: userAnswer21N)
        {
            performSegue(withIdentifier: "riddle2:1ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:1ToRiddle2:2N", sender: self)
        }
    }
    
    @IBAction func submit22N(_ sender: UIButton) {
        if testRiddle2NAnswer(userAnswer: userAnswer22N)
        {
            performSegue(withIdentifier: "riddle2:2ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:2ToRiddle2:3N", sender: self)
        }
    }
    
    @IBAction func submit23N(_ sender: UIButton) {
        if testRiddle2NAnswer(userAnswer: userAnswer23N)
        {
            performSegue(withIdentifier: "riddle2:3ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle2:3ToRiddle2:4N", sender: self)
        }
    }
    
    
    @IBAction func useCamera2N(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle3NAnswer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("Gas Works") == ComparisonResult.orderedSame || userAnswer.text?.caseInsensitiveCompare("Gas Works Park") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit31N(_ sender: UIButton) {
        if testRiddle3NAnswer(userAnswer: userAnswer31N)
        {
            performSegue(withIdentifier: "riddle3:1ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:1ToRiddle3:2N", sender: self)
        }
    }
    
    
    @IBAction func submit32N(_ sender: UIButton) {
        if testRiddle3NAnswer(userAnswer: userAnswer32N)
        {
            performSegue(withIdentifier: "riddle3:2ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:2ToRiddle3:3N", sender: self)
        }
    }
    
    
    @IBAction func submit33N(_ sender: UIButton) {
        if testRiddle3NAnswer(userAnswer: userAnswer33N)
        {
            performSegue(withIdentifier: "riddle3:3ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle3:3ToRiddle3:4N", sender: self)
        }
    }
    
    @IBAction func useCamera3N(_ sender: Any) {
        self.useCamera()
    }
    
    func testRiddle4NAnswer(userAnswer: UITextField) -> Bool
    {
        if (userAnswer.text?.caseInsensitiveCompare("Zoo") == ComparisonResult.orderedSame)
        {
            return true
        }
        return false
    }
    
    @IBAction func submit41N(_ sender: UIButton) {
        if testRiddle4NAnswer(userAnswer: userAnswer41N)
        {
            performSegue(withIdentifier: "riddle4:1ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:1ToRiddle4:2N", sender: self)
        }
    }
    
    
    @IBAction func submit42N(_ sender: UIButton) {
        if testRiddle4NAnswer(userAnswer: userAnswer42N)
        {
            performSegue(withIdentifier: "riddle4:2ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:2ToRiddle4:3N", sender: self)
        }
    }
    
    
    @IBAction func submit43N(_ sender: UIButton) {
        if testRiddle4NAnswer(userAnswer: userAnswer43N)
        {
            performSegue(withIdentifier: "riddle4:3ToCongratsN", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "riddle4:3ToRiddle4:4N", sender: self)
        }
    }
    
    
    @IBAction func useCamera4N(_ sender: UIButton) {
        self.useCamera()
    }
    
    
}
