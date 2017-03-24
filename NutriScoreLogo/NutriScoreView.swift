//
//  NutriScoreView.swift
//  NutriScoreLogo
//
//  Created by arnaud on 24/03/17.
//  Copyright © 2017 Hovering Above. All rights reserved.
//

import UIKit


// @IBDesignable

class NutriScoreView: UIView {

    private struct Constant {
        static let CornerRadius = CGFloat(60.0)
        static let BorderWidth = CGFloat(10.0)
        static let BorderColor = UIColor.white.cgColor
        static let StandardWidth = CGFloat(310.0)
        static let StandardFontSize = CGFloat(80.0)
        static let SelectedFontSize = CGFloat(100.0)
        static let EdgeRadius = CGFloat(50.0)
    }

    @IBOutlet var view: UIView!
    
    @IBOutlet weak var AView: UIView! {
        didSet {
            AView?.layer.cornerRadius = self.bounds.size.width / Constant.StandardWidth * Constant.EdgeRadius
        }
    }

    
    @IBOutlet weak var ACornerView: UIView!
    
    @IBOutlet weak var ALabel: UILabel! {
        didSet {
            ALabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.StandardFontSize)
        }
    }

    @IBOutlet weak var BView: UIView!
    
    @IBOutlet weak var BLabel: UILabel! {
        didSet {
            BLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.StandardFontSize)
        }
    }

    
    @IBOutlet weak var CView: UIView!
    
    @IBOutlet weak var CLabel: UILabel! {
        didSet {
            CLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.StandardFontSize)
        }
    }

    
    @IBOutlet weak var DView: UIView!
    
    @IBOutlet weak var DLabel: UILabel! {
        didSet {
            DLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.StandardFontSize)
        }
    }

    
    @IBOutlet weak var EView: UIView! {
        didSet {
            EView?.layer.cornerRadius = self.bounds.size.width / Constant.StandardWidth * Constant.EdgeRadius
        }
    }

    
    @IBOutlet weak var ELabel: UILabel! {
        didSet {
            ELabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.StandardFontSize)
        }
    }

    @IBOutlet weak var ASelectedLabel: UILabel! {
        didSet {
            ASelectedLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.SelectedFontSize)
        }
    }

    @IBOutlet weak var ASuperView: UIView! {
        didSet {
            ASuperView?.isHidden = currentScore == .A ? false : true
            // corner radius
            ASuperView?.layer.cornerRadius = self.bounds.size.width / Constant.StandardWidth * Constant.CornerRadius
            
            // border
            ASuperView?.layer.borderWidth = self.bounds.size.width / Constant.StandardWidth * Constant.BorderWidth
            ASuperView?.layer.borderColor = Constant.BorderColor
        }
    }
    
    @IBOutlet weak var BSuperView: UIView! {
        didSet {
            BSuperView?.isHidden = currentScore == .B ? false : true
            // corner radius
            BSuperView?.layer.cornerRadius = self.bounds.size.width / Constant.StandardWidth * Constant.CornerRadius
            
            // border
            BSuperView?.layer.borderWidth = self.bounds.size.width / Constant.StandardWidth * Constant.BorderWidth
            BSuperView?.layer.borderColor = Constant.BorderColor
        }
    }

    @IBOutlet weak var BSelectedLabel: UILabel! {
        didSet {
            BSelectedLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.SelectedFontSize)
        }
    }
    
    @IBOutlet weak var CSuperView: UIView! {
        didSet {
            CSuperView?.isHidden = currentScore == .C ? false : true
            // corner radius
            CSuperView?.layer.cornerRadius = self.bounds.size.width / Constant.StandardWidth * Constant.CornerRadius
            
            // border
            CSuperView?.layer.borderWidth = self.bounds.size.width / Constant.StandardWidth * Constant.BorderWidth
            CSuperView?.layer.borderColor = Constant.BorderColor
        }
    }

    @IBOutlet weak var CSelectedLabel: UILabel! {
        didSet {
            CSelectedLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.SelectedFontSize)
        }
    }
    
    @IBOutlet weak var DSuperView: UIView! {
        didSet {
            DSuperView?.isHidden = currentScore == .D ? false : true
            // corner radius
            DSuperView?.layer.cornerRadius = self.bounds.size.width / Constant.StandardWidth * Constant.CornerRadius
            
            // border
            DSuperView?.layer.borderWidth = self.bounds.size.width / Constant.StandardWidth * Constant.BorderWidth
            DSuperView?.layer.borderColor = Constant.BorderColor
        }
    }

    @IBOutlet weak var DSelectedLabel: UILabel! {
        didSet {
            DSelectedLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.SelectedFontSize)
        }
    }

    @IBOutlet weak var ESuperView: UIView! {
        didSet {
            ESuperView?.isHidden = currentScore == .E ? false : true
            // corner radius
            ESuperView?.layer.cornerRadius = self.bounds.size.width / Constant.StandardWidth * Constant.CornerRadius
            
            // border
            ESuperView?.layer.borderWidth = self.bounds.size.width / Constant.StandardWidth * Constant.BorderWidth
            ESuperView?.layer.borderColor = Constant.BorderColor
        }
    }
    
    @IBOutlet weak var ESelectedLabel: UILabel!  {
        didSet {
            ESelectedLabel.font = UIFont.boldSystemFont(ofSize: self.bounds.size.width / Constant.StandardWidth * Constant.SelectedFontSize)
        }
    }

    public enum Score {
        case A
        case B
        case C
        case D
        case E
    }
    
    public var currentScore: Score? = nil {
        didSet {
            ASuperView?.isHidden = currentScore == .A ? false : true
            BSuperView?.isHidden = currentScore == .B ? false : true
            CSuperView?.isHidden = currentScore == .C ? false : true
            DSuperView?.isHidden = currentScore == .D ? false : true
            ESuperView?.isHidden = currentScore == .E ? false : true
        }
    }
    

    //
    // http://stackoverflow.com/questions/30335089/reuse-a-uiview-xib-in-storyboard/30335090#30335090
    //
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView! {
        if let view = Bundle.main.loadNibNamed("NutriScoreView", owner: self, options: nil)  {
            return view.first as! UIView
        } else {
            // xib not loaded, or it's top view is of the wrong type
            return nil
        }
    }
}
