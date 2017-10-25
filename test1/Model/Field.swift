//
//  Field.swift
//  test1
//
//  Created by Nick van der Boor on 22-10-17.
//  Copyright © 2017 Nick van der Boor. All rights reserved.
//
import SpriteKit

class Field:SKScene{
    //remove most
    var locationWidth:Int?
    var locationHeight:Int?
    var objectOnField:Object?
    var imageForGround = SKSpriteNode(imageNamed: "ground")
    /**
     This function adds an **Object** to this **Field**
     - Author: Nick van der Boor
     - Copyright: Copyright © 2017 NA van der Boor - van Egmond. All rights reserved.
     - Date: 23 October 2017
     - Version: 0.1
     - ToDo:
 
     ## Example ##
     ```
     // Set Object on Field
     let testObject = Object()
     setObjectOnField(givenObject: testObject)
     
     ```
     - parameter givenObject: The object that is put on this field
     */
 
    func setObjectOnField(givenObject anObject:Object){
        self.objectOnField = anObject
        self.imageForGround = SKSpriteNode(imageNamed: "wall")
    }
    /**
     Removes the object from the field and sets value to *nil*
     
     - Author: Nick van der Boor
     - Copyright: Copyright © 2017 NA van der Boor - van Egmond. All rights reserved.
     - Date: 23 October 2017
     - Version: 0.1
     - ToDo:
    
     */
    func removeObjectOnField(){
        self.objectOnField = nil
    }
    /**
     This function checks if this field contains an Object and returns a value with this result
     - Author: Nick van der Boor
     - Copyright: Copyright © 2017 NA van der Boor - van Egmond. All rights reserved.
     - Date: 23 October 2017
     - Version: 0.1
     - ToDo:
     - returns: *true* or *false* value depending on the fact if this field contains an **object**
     */
    func hasAnObject() -> Bool{
        if self.objectOnField == nil  {
            return false
        } else {
            return true
        }
    }    
}
