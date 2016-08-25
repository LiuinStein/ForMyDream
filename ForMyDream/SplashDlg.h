#pragma once


// CSplashDlg 对话框

class CSplashDlg : public CDialogEx
{
    DECLARE_DYNAMIC(CSplashDlg)

public:
    CSplashDlg(CWnd* pParent = NULL);   // 标准构造函数
    virtual ~CSplashDlg();

// 对话框数据
#ifdef AFX_DESIGN_TIME
    enum { IDD = IDD_SPLASH_DIALOG };
#endif

protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

    DECLARE_MESSAGE_MAP()
public:
    virtual BOOL OnInitDialog();
};
