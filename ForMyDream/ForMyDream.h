
// ForMyDream.h : PROJECT_NAME Ӧ�ó������ͷ�ļ�
//

#pragma once

#ifndef __AFXWIN_H__
	#error "�ڰ������ļ�֮ǰ������stdafx.h�������� PCH �ļ�"
#endif

#include "resource.h"		// ������


// CForMyDreamApp: 
// �йش����ʵ�֣������ ForMyDream.cpp
//

class CForMyDreamApp : public CWinApp
{
public:
	CForMyDreamApp();

// ��д
public:
	virtual BOOL InitInstance();

// ʵ��

	DECLARE_MESSAGE_MAP()
};

extern CForMyDreamApp theApp;