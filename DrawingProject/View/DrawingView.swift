//
//  DrawingView.swift
//  DrawingProject
//
//  Created by Runyan, Jacob on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        drawDabingStickFigure().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawDabingStickFigure() -> UIBezierPath
    {
        let draw = UIBezierPath()
        UIColor.black.setStroke()
        draw.lineWidth = 3.0
        
        //drawing head
        draw.addArc(withCenter: CGPoint(x: 50, y: 50),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        //drawing body
        draw.move(to: CGPoint(x: 50, y: 70))
        draw.addLine(to: CGPoint(x: 50, y: 120))
        
        //drawing legs
        draw.addLine(to: CGPoint(x: 30, y: 150))
        draw.move(to: CGPoint(x: 50, y: 120))
        draw.addLine(to: CGPoint(x: 70, y: 150))
        
        //drawing arms
        draw.move(to: CGPoint(x: 50, y: 90))
        draw.addLine(to: CGPoint(x: 20, y: 60))
        draw.addLine(to: CGPoint(x: 60, y: 40))
        draw.move(to: CGPoint(x: 50, y: 90))
        draw.addLine(to: CGPoint(x: 100, y: 55))
        
        return draw
    }
}
