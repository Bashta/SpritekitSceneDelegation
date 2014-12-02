import SpriteKit

class GameViewController: UIViewController, GameSceneDelegate {
	
	@IBOutlet weak var skView: SKView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let scene = GameScene(size: skView.bounds.size)
		
		/* Set the scale mode to scale to fit the window */
		scene.scaleMode = .AspectFill
		
		skView.presentScene(scene)
		
		scene.gameSceneDelegate = self
	}
	
	
	func gameOver() {
		
		let menuScene = MenuScene(size: skView.bounds.size)
		skView.presentScene(menuScene)
	}
}




