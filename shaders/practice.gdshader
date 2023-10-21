shader_type canvas_item;
uniform vec2 center = vec2(0.5, 0.5);

void fragment() {
    float dist = distance(center, UV);
    dist = clamp(dist, 0.1, 0.5);
    COLOR = texture(TEXTURE, UV);
    float val = step(cos(TIME), dist);
    COLOR.a = val;
}
//
//void fragment() {
//	float dist = distance(center, UV);
//	dist = clamp(dist, 0, 0.5);
//	COLOR = texture(TEXTURE, UV);
//	COLOR = vec4(tan(dist * TIME * 0.0 * -1.0) ,cos(dist * TIME * 20.0 * -1.0),cos(dist * TIME * 5.0 * -1.0),1);
//}
