#pragma once


// CSplashDlg �Ի���

class CSplashDlg : public CDialogEx
{
    DECLARE_DYNAMIC(CSplashDlg)

public:
    CSplashDlg(CWnd* pParent = NULL);   // ��׼���캯��
    virtual ~CSplashDlg();

// �Ի�������
#ifdef AFX_DESIGN_TIME
    enum { IDD = IDD_SPLASH_DIALOG };
#endif

protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV ֧��

    DECLARE_MESSAGE_MAP()
public:
    virtual BOOL OnInitDialog();
};
