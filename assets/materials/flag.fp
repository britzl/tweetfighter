varying mediump vec2 var_texcoord0;

uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 tint;
uniform lowp vec4 time;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
	vec2 uv0 = var_texcoord0.xy;
	//uv0.x += cos((uv0.y + time.x * 0.25) * 15.0) * 0.01;
	uv0.y += cos((uv0.x + time.x * 0.25) * 15.0) * 0.01;
    gl_FragColor = texture2D(DIFFUSE_TEXTURE, uv0.xy) * tint_pm;
}
