shader_type canvas_item;
uniform vec2 scroll = vec2(0.1, 0.1);
float applyShaderOnPixel(vec2 co){	
	return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

void fragment() {
	vec2 uv =  UV * vec2(clamp(cos(0.1 * TIME), 0.1, 1), 0.2);
  COLOR = texture(TEXTURE, uv);
COLOR.a = 0.4;
}

void vertex() {
  // Animate Sprite2D moving in big circle around its location
  VERTEX += vec2(cos(TIME)*100.0, cos(TIME)*100.0);
}