shader_type canvas_item;


void fragment() {
	 float value = 0.5;
     float randomThreshold = fract(sin(UV.x * 43758.5453 + UV.y * 76963.7309 + TIME) * 43758.5453);
     float result = step(randomThreshold, value);
	COLOR = texture(TEXTURE, UV);
     COLOR.a = result;
}
