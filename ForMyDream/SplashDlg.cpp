// SplashDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "ForMyDream.h"
#include "SplashDlg.h"
#include "afxdialogex.h"


// CSplashDlg 对话框

IMPLEMENT_DYNAMIC(CSplashDlg, CDialogEx)

CSplashDlg::CSplashDlg(CWnd* pParent /*=NULL*/)
	: CDialogEx(IDD_SPLASH_DIALOG, pParent)
{

}

CSplashDlg::~CSplashDlg()
{
}

void CSplashDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}


BEGIN_MESSAGE_MAP(CSplashDlg, CDialogEx)
END_MESSAGE_MAP()


// CSplashDlg 消息处理程序
