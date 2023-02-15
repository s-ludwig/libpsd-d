/+ dub.sdl:
	name "test"
	dependency "libpsd" path="."
+/
module test;

import psd;

void main()
{
	psd_context* ctx;
	assert(psd_image_load(&ctx, cast(char*)"foobar.psd".ptr) == psd_status.invalid_file);
}
