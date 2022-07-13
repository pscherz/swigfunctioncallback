%module(directors="1") liba
%{
#include "../clib/a.h"
%}

%include "../clib/a.h"

%feature("director") MyCB;
%inline %{
struct MyCB {
    virtual int handle(int a, int b) { return 0; }
    virtual ~MyCB() {}
};
%}

%{
thread_local MyCB *handler_ptr = nullptr;
static int handler_helper(int a, int b) {
    return handler_ptr->handle(a,b);
}
%}

%inline %{
int add_wrapper(int a, int b, MyCB *handler) {
    handler_ptr = handler;
    int result = add(a, b, &handler_helper);
    handler_ptr = nullptr;
    return result;
}
%}
