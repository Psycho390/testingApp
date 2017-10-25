//
//  File.swift
//  test1
//
//  Created by Nick van der Boor on 22-10-17.
//  Copyright © 2017 Nick van der Boor. All rights reserved.
//

import SpriteKit

class LevelOne:SKScene{
    //Values needed for the Scene
    let gridLevelOne = GridField (givenWidth: 10, givenHeight: 10)
    var fields = [Field]()
    let tileSize = (width:32, height:32)
    let view2D:SKSpriteNode
    // need to write overwrite
    override init(size: CGSize) {
        view2D = SKSpriteNode()
        super.init(size: size)
        self.anchorPoint = CGPoint(x:0.1, y:0.8)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //toDo remove comment section
    override func didMove(to view: SKView) {
        runFieldLoop()
        backgroundColor = SKColor.white
        /*
        let deviceScale = self.size.width/667
        view2D.position = CGPoint(x:-self.size.width*0.45, y:self.size.height*0.17)
        view2D.xScale = deviceScale
        view2D.yScale = deviceScale
        //addChild(view2D)*/
    }
    /**
     It creates the amount of fields of **Field** object necessary to fill the **Grid** of a level
     - Author: Nick van der Boor
     - Copyright: Copyright © 2017 NA van der Boor - van Egmond. All rights reserved.
     - Date: 23 October 2017
     - Version: 0.1
     - ToDo:
         1) Remove test
     */
    func runFieldLoop(){
        for i in 0..<self.gridLevelOne.amountWidth{
            for j in 0..<self.gridLevelOne.amountHeight{
                let field = Field()
                field.locationWidth = i
                field.locationHeight = j
                self.fields.append(field)
                field.imageForGround.position = CGPoint(x: (i*tileSize.width), y: -(j*tileSize.height))
                field.imageForGround.anchorPoint = CGPoint(x:0, y:0)
                if (i == 1 && j==5){
                    let testWall = Wall()
                    field.setObjectOnField(givenObject: testWall)
                }
                addChild(field.imageForGround)
                
            }
        }
    }

    /**
     - Author: Nick van der Boor
     - Copyright: Copyright © 2017 NA van der Boor - van Egmond. All rights reserved.
     - Date: 23 October 2017
     - Version: 0.1
     - ToDo:
         1) Finish Comment section
         2) Create throw(error)
     
     ## Example ##
     ```
     // Get Field from the array
     let neededField = getField(4,5)
 
     ```
     - parameter locationHeightInt: The height coordinate of the field as an **Int** value
     - parameter locationWidthInt: The width coordinate of the field as an **Int** value
     - returns: Needed Field object or it gives an error and gives an empty Field() object
     */
    func getField(locationHeightInt:Int, locationWidthInt:Int)->Field{
        if let found  = fields.first(where:{$0.locationWidth==locationWidthInt && $0.locationHeight==locationHeightInt}){
            return found
        }else{
            let notFound = Field()
            print("error no field Found")
            return notFound
        }
    }
}

