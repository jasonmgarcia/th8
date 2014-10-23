
/*
 * JackieEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class JackieEntity : SEEntity
{
	SESprite smiley;
	int w;
	int h;
	int sx;
	int sy;
	int pX;
	int pY;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		pX = MainScene.x;
		pY = MainScene.y;

		
		rsc.prepare_image("mysmiley", "smiley", 0.2*w);
		smiley = add_sprite_for_image(SEImage.for_resource("mysmiley"));

		smiley.move(Math.random(0,w), Math.random(0,h));
	}

	public void tick(TimeVal now, double delta)
	{
		sx = smiley.get_x();
		sy = smiley.get_y();
		pX = MainScene.x;
		pY = MainScene.y;;
		base.tick(now, delta);
		smiley.move(sx+(pX-sx)/Math.random(50,220), sy+(pY-sy)/Math.random(50,220));
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
