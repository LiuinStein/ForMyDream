﻿
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
private:
   
    int m_bySleepTime;  // Splash窗口的显示周期，以毫秒为单位     
    int m_iTimeBase; // 时间基数，以秒为单位
    bool m_bIsStart; // 当前监控状态，true为开启              
    int m_iTimeRemaining;  // 剩余时间
    NOTIFYICONDATA m_nid;


    // 用于获取文本框数字
    int getTextNum();

    // 设置单选键和文本框是否可用
    void setTextRadioEnable(BOOL __b);

    //最小化到托盘
    void toTray();

    //开始展示
    friend UINT startShow(LPVOID pParam);

    CString getTimeRemaining();

public:
    afx_msg void OnBnClickedRadioSec();
    afx_msg void OnBnClickedRadioMin();
    afx_msg void OnBnClickedRadioHour();
    afx_msg void OnTimer(UINT_PTR nIDEvent);
    afx_msg void OnClose();
    afx_msg void OnBnClickedOk();
    afx_msg void OnDestroy();

protected:
    afx_msg LRESULT OnShowtask(WPARAM wParam, LPARAM lParam);  
    afx_msg LRESULT OnControlSplash(WPARAM wParam, LPARAM lParam);
    virtual BOOL OnCommand(WPARAM wParam, LPARAM lParam);
};
