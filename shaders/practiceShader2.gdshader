shader_type canvas_item;

void fragment() {
	vec4  pixelColor = texture(TEXTURE, UV);
	float greyScaleColor= (pixelColor.r + pixelColor.b + pixelColor.g) / 3.0;
	vec2 distortedUV = UV;
	distortedUV.x = distortedUV.x + (distortedUV.y * (distortedUV.y * cos(TIME) * sin(TIME)));
	distortedUV.y = distortedUV.y + (distortedUV.x * (distortedUV.x * cos(TIME) * sin(TIME)));
	
	COLOR = texture(TEXTURE, distortedUV);
//	vec4 grayScale = vec4(greyScaleColor, greyScaleColor, greyScaleColor, greyScaleColor);	
//	COLOR = grayScale;
}

