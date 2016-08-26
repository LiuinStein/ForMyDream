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


BOOL CSplashDlg::OnInitDialog()
{
    CDialogEx::OnInitDialog();
    AnimateWindow(2500, AW_ACTIVATE | AW_BLEND);
    AnimateWindow(2500, AW_HIDE | AW_BLEND);
    PostMessage(WM_CLOSE);
    return TRUE;  // return TRUE unless you set the focus to a control
                  // 异常: OCX 属性页应返回 FALSE
}
