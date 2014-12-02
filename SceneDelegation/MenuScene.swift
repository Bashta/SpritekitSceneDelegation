import SpriteKit

class MenuScene: SKScene	{
	
	var label = SKLabelNode(fontNamed: "Chalkduster")
	
	override func didMoveToView(view: SKView) {
		
		label.text = "The Game is finished! This is the menu"
		label.fontSize = 16
		label.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));

		self.addChild(label)
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