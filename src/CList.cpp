#include "CList.hpp"

// Constructor
CList::CList() {
    unk4 = 0;
    unk8 = 0;
}

// Destructor
CList::~CList() {
	
}

// Insert a node?
void CList::func_801EAAE0(CList *arg0) {
    unk4 = arg0;
    unk8 = (arg0 != 0) ? arg0->unk8 : 0;
    if (unk4) {
        unk4->unk8 = this;
    }
    if (unk8) {
        unk8->unk4 = this;
    }
    func4();
}

// Append a node?
void CList::func_801EAB2C(CList *arg0) {
    unk4 = (arg0 != 0) ? arg0->unk4 : 0;
    unk8 = arg0;
    if (unk4) {
        unk4->unk8 = this;
    }
    if (unk8) {
        unk8->unk4 = this;
    }
    func4();
}

// Remove a node?
void CList::func_801EAB74() {
    if (unk4) {
        unk4->unk8 = unk8;
    }
    if (unk8) {
        unk8->unk4 = unk4;
    }
    unk4 = 0;
    unk8 = 0;
    func8();
}

// Remove all nodes
void CList::func_801EABB8() {
    CList *current = this;
    CList *next;
    while (current) {
        next = current->unk4;
        if (next) {
            next->unk8 = current->unk8;
        }
        if (current->unk8) {
            current->unk8->unk4 = current->unk4;
        }
        current->unk4 = 0;
        current->unk8 = 0;
        current->func8();
        current = next;
    }
}