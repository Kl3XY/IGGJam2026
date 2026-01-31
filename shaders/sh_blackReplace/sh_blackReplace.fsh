//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 tex = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (tex == vec4(0.0, 0.0, 0.0, tex.a)) {
		tex = vec4(0.07, 0.06, 0.15, tex.a - 0.55);
	}
	
    gl_FragColor = tex;
	
}
