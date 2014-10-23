
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite hunter;
	int w2;
	int h2;

	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w2 = get_scene_width();
		h2 = get_scene_height();
		rsc.prepare_image("myhunter", "hunter", 0.1*w2);
		hunter = add_sprite_for_image(SEImage.for_resource("myhunter"));
		
		hunter.move(0.5*w2,0.65*h2);
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
		hunter.move(MainScene.x ,MainScene.y);
	}

	public void cleanup()
	{
		base.cleanup();
	}
}


