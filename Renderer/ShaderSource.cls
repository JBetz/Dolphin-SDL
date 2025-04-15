"Filed out from Dolphin Smalltalk"!

Object subclass: #ShaderSource
	instanceVariableNames: 'name stage sourceCode sourceFile metadata'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

ShaderSource guid: (GUID fromString: '{a979f8fb-df95-4ce0-8b9b-aea65a8324a4}')!

ShaderSource comment: ''!

!ShaderSource categoriesForClass!Kernel-Objects! !

!ShaderSource methodsFor!

compile
	| shaderInfo size result |
	shaderInfo := SDL_ShaderCross_HLSL_Info new.
	shaderInfo
		name: self name;
		shader_stage: self stage;
		source: self sourceCode;
		entrypoint: 'main';
		enable_debug: true.
	size := DWORD new.
	result := SDL3ShadercrossLibrary default compileDXILFromHLSL_info: shaderInfo size: size.
	result isNull ifTrue: [self error: SDL3Library default getError].
	^result!

name
	^name!

name: aString
	name := aString!

samplerCount
	^metadata num_samplers!

sourceCode
	^sourceCode!

sourceCode: anObject
	sourceCode := anObject!

sourceFile
	^sourceFile!

sourceFile: anObject
	sourceFile := anObject!

stage
	^stage!

stage: anInteger
	stage := anInteger!

storageBufferCount
	^metadata num_storage_buffers!

storageTextureCount
	^metadata num_storage_textures!

uniformBufferCount
	^metadata num_uniform_buffers! !

!ShaderSource categoriesForMethods!
compile!public! !
name!public! !
name:!public! !
samplerCount!public! !
sourceCode!accessing!public! !
sourceCode:!accessing!public! !
sourceFile!accessing!public! !
sourceFile:!accessing!public! !
stage!public! !
stage:!public! !
storageBufferCount!public! !
storageTextureCount!public! !
uniformBufferCount!public! !
!

!ShaderSource class methodsFor!

geometryFragment
	^self new
		name: 'geometry';
		stage: SDL_GPU_SHADERSTAGE_FRAGMENT;
		sourceFile: 'geometry.frag';
		sourceCode: 'Texture2D<float4> tex : register(t0, space2);
SamplerState samp : register(s0, space2);

struct Input {
    float4 position : SV_POSITION;
    float4 color : COLOR;
    float2 uv : TEXCOORD0;
};

float4 main(Input input) : SV_Target {
    float4 texColor = tex.Sample(samp, input.uv);
    return input.color * texColor;
}'!

geometryVertex
	^self new
		name: 'geometry';
		stage: SDL_GPU_SHADERSTAGE_VERTEX;
		sourceFile: 'geometry.vert';
		sourceCode: 'struct Input {
    float3 position : POSITION;
    float4 color : COLOR;
    float2 uv : TEXCOORD0;
};

struct Output {
    float4 position : SV_POSITION;
    float4 color : COLOR;
    float2 uv : TEXCOORD0;
};

cbuffer Context : register(b0, space1) {
   float4x4 camera;
}

Output main(Input input) {
    Output output;
    output.position = mul(camera, float4(input.position, 1.0));
    output.color = input.color;
    output.uv = input.uv;
    return output;
}'!

new
	^super new initialize!

rawTriangleVertex
	^self new
		name: 'rawTriangle';
		stage: SDL_GPU_SHADERSTAGE_VERTEX;
		sourceCode: 'struct Input
{
    uint VertexIndex : SV_VertexID;
};

struct Output
{
    float4 Color : TEXCOORD0;
    float4 Position : SV_Position;
};

Output main(Input input)
{
    Output output;
    float2 pos;
    if (input.VertexIndex == 0)
    {
        pos = (-1.0f).xx;
        output.Color = float4(1.0f, 0.0f, 0.0f, 1.0f);
    }
    else
    {
        if (input.VertexIndex == 1)
        {
            pos = float2(1.0f, -1.0f);
            output.Color = float4(0.0f, 1.0f, 0.0f, 1.0f);
        }
        else
        {
            if (input.VertexIndex == 2)
            {
                pos = float2(0.0f, 1.0f);
                output.Color = float4(0.0f, 0.0f, 1.0f, 1.0f);
            }
        }
    }
    output.Position = float4(pos, 0.0f, 1.0f);
    return output;
}'!

solidColorFragment
	^self new
		name: 'solidColor';
		stage: SDL_GPU_SHADERSTAGE_FRAGMENT;
		sourceCode: 'float4 main(float4 Color : TEXCOORD0) : SV_Target0
{
    return Color;
}'! !

!ShaderSource class categoriesForMethods!
geometryFragment!public! !
geometryVertex!public! !
new!public! !
rawTriangleVertex!public! !
solidColorFragment!public! !
!

