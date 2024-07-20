"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Vertex
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_color _OffsetOf_position _OffsetOf_tex_coord'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Vertex guid: (GUID fromString: '{87ebc352-9aba-4986-aceb-11e278bf9866}')!

SDL_Vertex addClassConstant: '_OffsetOf_color' value: 16r8!
SDL_Vertex addClassConstant: '_OffsetOf_position' value: 16r0!
SDL_Vertex addClassConstant: '_OffsetOf_tex_coord' value: 16r18!

SDL_Vertex comment: ''!

!SDL_Vertex categoriesForClass!External-Data-Structured! !

!SDL_Vertex methodsFor!

color
	"Answer the <SDL_FColor> value of the receiver's 'color' field."

	^SDL_FColor fromAddress: bytes yourAddress + _OffsetOf_color!

color: aSDL_FColor
	"Set the receiver's 'color' field to the value of the argument, aSDL_FColor"

	aSDL_FColor
		replaceBytesOf: bytes
		from: ##(_OffsetOf_color + 1)
		to: ##(_OffsetOf_color + SDL_FColor basicByteSize)
		startingAt: 1!

position
	"Answer the <SDL_FPoint> value of the receiver's 'position' field."

	^SDL_FPoint fromAddress: bytes yourAddress!

position: aSDL_FPoint
	"Set the receiver's 'position' field to the value of the argument, aSDL_FPoint"

	aSDL_FPoint
		replaceBytesOf: bytes
		from: ##(_OffsetOf_position + 1)
		to: ##(_OffsetOf_position + SDL_FPoint basicByteSize)
		startingAt: 1!

tex_coord
	"Answer the <SDL_FPoint> value of the receiver's 'tex_coord' field."

	^SDL_FPoint fromAddress: bytes yourAddress + _OffsetOf_tex_coord!

tex_coord: aSDL_FPoint
	"Set the receiver's 'tex_coord' field to the value of the argument, aSDL_FPoint"

	aSDL_FPoint
		replaceBytesOf: bytes
		from: ##(_OffsetOf_tex_coord + 1)
		to: ##(_OffsetOf_tex_coord + SDL_FPoint basicByteSize)
		startingAt: 1! !

!SDL_Vertex categoriesForMethods!
color!**compiled accessors**!public! !
color:!**compiled accessors**!public! !
position!**compiled accessors**!public! !
position:!**compiled accessors**!public! !
tex_coord!**compiled accessors**!public! !
tex_coord:!**compiled accessors**!public! !
!

!SDL_Vertex class methodsFor!

defineFields
	"SDL_Vertex compileDefinition"

	"typedef struct SDL_Vertex
	{
	    SDL_FPoint position;        /**< Vertex position, in SDL_Renderer coordinates  */
	    SDL_FColor  color;           /**< Vertex color */
	    SDL_FPoint tex_coord;       /**< Normalized texture coordinates, if needed */
	} SDL_Vertex;"

	self
		defineField: #position type: (StructureField type: SDL_FPoint);
		defineField: #color type: (StructureField type: SDL_FColor);
		defineField: #tex_coord type: (StructureField type: SDL_FPoint)!

getFieldNames
	^#(#position #color #tex_coord)! !

!SDL_Vertex class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

