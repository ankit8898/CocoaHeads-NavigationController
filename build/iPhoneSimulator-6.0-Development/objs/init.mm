#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_220F63F446EA4D4B8DBD8444F29EFA1D(void *, void *);
void MREP_1CA60682198E4F9697040153FD29314F(void *, void *);
void MREP_DFEDB16929FD4B238C568B77AC4184A2(void *, void *);
void MREP_4F7A2B5D51DA4EAE98416A8C4F33FCCB(void *, void *);
void MREP_6919C2B67E9F4DDF8F012806C29D7AD9(void *, void *);
void MREP_2AB77990A9E54C6CA4DAAECB4B411A12(void *, void *);
void MREP_D9C95F42CE0D446AA7D647672D9574C2(void *, void *);
void MREP_E4103D8F81354EBFAF161B095B411B35(void *, void *);
void MREP_38DE7D5F2F5F487CB2BF906E84BAEC6A(void *, void *);
void MREP_1880A50C5E814902A453D938F294BC63(void *, void *);
void MREP_54E1B3358E8E4C8A9F577C2AB602BAC0(void *, void *);
void MREP_AB3813EB83A1479497CD49A1C57F748D(void *, void *);
void MREP_8A13B47AF4654329B3967DA7682F2838(void *, void *);
void MREP_4AD372A35768444CA628676AF30D8DBC(void *, void *);
void MREP_4D4DFC13392742F8B6F37A06181A2CE6(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_220F63F446EA4D4B8DBD8444F29EFA1D(self, 0);
MREP_1CA60682198E4F9697040153FD29314F(self, 0);
MREP_DFEDB16929FD4B238C568B77AC4184A2(self, 0);
MREP_4F7A2B5D51DA4EAE98416A8C4F33FCCB(self, 0);
MREP_6919C2B67E9F4DDF8F012806C29D7AD9(self, 0);
MREP_2AB77990A9E54C6CA4DAAECB4B411A12(self, 0);
MREP_D9C95F42CE0D446AA7D647672D9574C2(self, 0);
MREP_E4103D8F81354EBFAF161B095B411B35(self, 0);
MREP_38DE7D5F2F5F487CB2BF906E84BAEC6A(self, 0);
MREP_1880A50C5E814902A453D938F294BC63(self, 0);
MREP_54E1B3358E8E4C8A9F577C2AB602BAC0(self, 0);
MREP_AB3813EB83A1479497CD49A1C57F748D(self, 0);
MREP_8A13B47AF4654329B3967DA7682F2838(self, 0);
MREP_4AD372A35768444CA628676AF30D8DBC(self, 0);
MREP_4D4DFC13392742F8B6F37A06181A2CE6(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
