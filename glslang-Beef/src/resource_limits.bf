using System;
namespace glslang_Beef;

static
{
	// Returns a struct that can be use to create custom resource values.
	[CallingConvention(.Stdcall), CLink] public static extern glslang_resource_t* glslang_resource();

	// These are the default resources for TBuiltInResources, used for both
	//  - parsing this string for the case where the user didn't supply one,
	//  - dumping out a template for user construction of a config file.
	[CallingConvention(.Stdcall), CLink] public static extern glslang_resource_t* glslang_default_resource();

	// Returns the DefaultTBuiltInResource as a human-readable string.
	// NOTE: User is responsible for freeing this string.
	[CallingConvention(.Stdcall), CLink] public static extern char8* glslang_default_resource_string();

	// Decodes the resource limits from |config| to |resources|.
	[CallingConvention(.Stdcall), CLink] public static extern void glslang_decode_resource_limits(glslang_resource_t* resources, char8* config);
}