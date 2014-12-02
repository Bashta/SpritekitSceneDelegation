import SpriteKit

protocol GameSceneDelegate {
	func gameOver()
}

class GameScene: SKScene {
	
	var gameSceneDelegate: GameSceneDelegate?
	var health: Int = 10
	var helthLabel = SKLabelNode(fontNamed: "Chalkduster")
	
    override func didMoveToView(view: SKView) {
	
	/* Setup your scene here */
        helthLabel.text = "GameScene";
        helthLabel.fontSize = 20;
        helthLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
	
        self.addChild(helthLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
		
		  let location = touch.locationInNode(self)
		  health--
		  helthLabel.text = "Your health is \(health)"
		
		if health <= 0 {
			self.gameSceneDelegate?.gameOver()
		}
	}
    }

	override init(size: CGSize) {
		super.init(size: size)
	}

	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
