
// ForMyDreamDlg.h : 头文件
//

#pragma once


// CForMyDreamDlg 对话框
class CForMyDreamDlg : public CDialogEx
{
// 构造
public:
	CForMyDreamDlg(CWnd* pParent = NULL);	// 标准构造函数

// 对话框数据
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_FORMYDREAM_DIALOG };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV 支持


// 实现
protected:
	HICON m_hIcon;

	// 生成的消息映射函数
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
    afx_msg void OnBnClickedOk();
private:
    // Splash窗口的显示周期，以毫秒为单位 
    int m_bySleepTime;

    // 用于获取文本框数字
    int getTextNum();
public:
    afx_msg void OnBnClickedRadioSec();
private:
    // 时间基数，以秒为单位
    int m_iTimeBase;
public:
    afx_msg void OnBnClickedRadioMin();
    afx_msg void OnBnClickedRadioHour();
};
