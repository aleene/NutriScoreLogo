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
        static let CornerRadius = CGFloat(40.0)
        static let BorderWidth = CGFloat(4.0)
        static let BorderColor = UIColor.white.cgColor
    }

    @IBOutlet var view: UIView!
    
    @IBOutlet weak var AView: UIView! {
        didSet {
            
        }
    }
    
    @IBOutlet weak var BView: UIView!
    
    @IBOutlet weak var CView: UIView!
    
    @IBOutlet weak var DView: UIView!
    
    @IBOutlet weak var EView: UIView!
    
    @IBOutlet weak var ASuperView: UIView! {
        didSet {
            ASuperView?.isHidden = currentScore == .A ? false : true
            // corner radius
            ASuperView?.layer.cornerRadius = Constant.CornerRadius
            
            // border
            ASuperView?.layer.borderWidth = Constant.BorderWidth
            ASuperView?.layer.borderColor = Constant.BorderColor
        }
    }
    
    @IBOutlet weak var BSuperView: UIView! {
        didSet {
            BSuperView?.isHidden = currentScore == .B ? false : true
            // corner radius
            BSuperView?.layer.cornerRadius = Constant.CornerRadius
            
            // border
            BSuperView?.layer.borderWidth = Constant.BorderWidth
            BSuperView?.layer.borderColor = Constant.BorderColor
        }
    }

    
    @IBOutlet weak var CSuperView: UIView! {
        didSet {
            CSuperView?.isHidden = currentScore == .C ? false : true
            // corner radius
            CSuperView?.layer.cornerRadius = Constant.CornerRadius
            
            // border
            CSuperView?.layer.borderWidth = Constant.BorderWidth
            CSuperView?.layer.borderColor = Constant.BorderColor
        }
    }

    
    @IBOutlet weak var DSuperView: UIView! {
        didSet {
            DSuperView?.isHidden = currentScore == .D ? false : true
            // corner radius
            DSuperView?.layer.cornerRadius = Constant.CornerRadius
            
            // border
            DSuperView?.layer.borderWidth = Constant.BorderWidth
            DSuperView?.layer.borderColor = Constant.BorderColor
        }
    }

    
    @IBOutlet weak var ESuperView: UIView! {
        didSet {
            ESuperView?.isHidden = currentScore == .E ? false : true
            // corner radius
            ESuperView?.layer.cornerRadius = Constant.CornerRadius
            
            // border
            ESuperView?.layer.borderWidth = Constant.BorderWidth
            ESuperView?.layer.borderColor = Constant.BorderColor
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
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: self), bundle: bundle)
        print(nib.description)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
}
