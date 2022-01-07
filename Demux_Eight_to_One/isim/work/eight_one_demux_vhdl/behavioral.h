////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_eight_one_demux_vhdl_behavioral_H
#define H_Work_eight_one_demux_vhdl_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_eight_one_demux_vhdl_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[12];

    Work_eight_one_demux_vhdl_behavioral(const char * name);
    ~Work_eight_one_demux_vhdl_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_eight_one_demux_vhdl_behavioral(const char *name);

#endif
