//
// Simple passthrough fragment shader
// Make sprites flash when hit


varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTextcoord);
	gl_FragColor.r = 1.0;
	gl_FragColor.g = 1.0; 
	gl_FragColor.b = 1.0;
}


	