shader_type canvas_item;




void fragment() {
	 float value = 0.5;
     float randomThreshold = fract(sin(UV.x * 43758.5453 + UV.y * 76963.7309 + TIME) * 43758.5453);
     float result = step(randomThreshold, value);
	 float pixelx = UV.x;
	 pixelx += ((randomThreshold  * 1.4) + 0.1);
	 vec2 distortedUV = vec2(UV.x , UV.y  + (randomThreshold));
	COLOR = texture(TEXTURE, distortedUV);
}

