shader_type canvas_item;
uniform vec2 scroll = vec2(0.1, 0.1);
float applyShaderOnPixel(vec2 co){	
	return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}



void fragment() {
  	
  COLOR = texture(TEXTURE, UV * vec2(-1.0 * clamp(cos(0.1 * TIME), 0.1, 2), 0.2));
COLOR.a = 0.3;
}

void vertex() {
  // Animate Sprite2D moving in big circle around its location
  VERTEX += -1.0 * vec2(cos(TIME)*100.0, cos(TIME)*100.0);
}