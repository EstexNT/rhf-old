class CList { // vtable = 8031EA40
public:
    CList(); // 801EAA84
    virtual ~CList(); // 801EAAA0
    virtual void func4() {};     // 
    virtual void func8() {};     // Finalizer 
    void func_801EAAE0(CList *); // Insert a node?
    void func_801EAB2C(CList *); // Append a node?
    void func_801EAB74(void);    // Remove a node?
    void func_801EABB8(void);    // Remove all the nodes 
    CList *unk4; // mNext
    CList *unk8; // mPrev
};