﻿
// ForMyDreamDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "ForMyDream.h"
#include "ForMyDreamDlg.h"
#include "afxdialogex.h"
#include "SplashDlg.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif

#define WM_SHOWTASK (WM_USER+1)
#define WM_CONTROLSPLASH (WM_USER+2) 

UINT startShow(LPVOID pParam)
{
    while (static_cast<CForMyDreamDlg*>(pParam)->m_bIsStart)
    {
        CSplashDlg csdShow;
        csdShow.DoModal();
        ::ShowWindow(csdShow.GetSafeHwnd(), SW_SHOW);
        Sleep(static_cast<CForMyDreamDlg*>(pParam)->m_bySleepTime);
    }
    return 0;
}

// CForMyDreamDlg 对话框



CForMyDreamDlg::CForMyDreamDlg(CWnd* pParent /*=NULL*/)
    : CDialogEx(IDD_FORMYDREAM_DIALOG, pParent)
    , m_bySleepTime(-1)
    , m_iTimeBase(-1)
    , m_bIsStart(false)
{
    m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CForMyDreamDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CForMyDreamDlg, CDialogEx)
    ON_WM_PAINT()
    ON_WM_QUERYDRAGICON()
    ON_BN_CLICKED(IDOK, &CForMyDreamDlg::OnBnClickedOk)
    ON_BN_CLICKED(IDC_RADIO_SEC, &CForMyDreamDlg::OnBnClickedRadioSec)
    ON_BN_CLICKED(IDC_RADIO_MIN, &CForMyDreamDlg::OnBnClickedRadioMin)
    ON_BN_CLICKED(IDC_RADIO_HOUR, &CForMyDreamDlg::OnBnClickedRadioHour)
    ON_MESSAGE(WM_SHOWTASK, &CForMyDreamDlg::OnShowtask)
    ON_WM_CLOSE()
    ON_MESSAGE(WM_CONTROLSPLASH, &CForMyDreamDlg::OnControlSplash)
END_MESSAGE_MAP()


// CForMyDreamDlg 消息处理程序

BOOL CForMyDreamDlg::OnInitDialog()
{
    CDialogEx::OnInitDialog();

    // 设置此对话框的图标。  当应用程序主窗口不是对话框时，框架将自动
    //  执行此操作
    SetIcon(m_hIcon, TRUE);			// 设置大图标
    SetIcon(m_hIcon, FALSE);		// 设置小图标

    // TODO: 在此添加额外的初始化代码

    return TRUE;  // 除非将焦点设置到控件，否则返回 TRUE
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。  对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CForMyDreamDlg::OnPaint()
{
    if (IsIconic())
    {
        CPaintDC dc(this); // 用于绘制的设备上下文

        SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

        // 使图标在工作区矩形中居中
        int cxIcon = GetSystemMetrics(SM_CXICON);
        int cyIcon = GetSystemMetrics(SM_CYICON);
        CRect rect;
        GetClientRect(&rect);
        int x = (rect.Width() - cxIcon + 1) / 2;
        int y = (rect.Height() - cyIcon + 1) / 2;

        // 绘制图标
        dc.DrawIcon(x, y, m_hIcon);
    }
    else
    {
        CDialogEx::OnPaint();
    }
}

//当用户拖动最小化窗口时系统调用此函数取得光标
//显示。
HCURSOR CForMyDreamDlg::OnQueryDragIcon()
{
    return static_cast<HCURSOR>(m_hIcon);
}

void CForMyDreamDlg::OnBnClickedOk()
{
    PostMessageW(WM_CONTROLSPLASH);
}

int CForMyDreamDlg::getTextNum()
{
    CString cstrInput;
    GetDlgItem(IDC_EDIT_INTERVAL)->GetWindowTextW(cstrInput);
    if ("" == cstrInput)
        return -1;
    return  _ttoi(cstrInput);
}

void CForMyDreamDlg::setTextRadioEnable(BOOL __b)
{
    GetDlgItem(IDC_EDIT_INTERVAL)->EnableWindow(__b);
    GetDlgItem(IDC_RADIO_SEC)->EnableWindow(__b);
    GetDlgItem(IDC_RADIO_MIN)->EnableWindow(__b);
    GetDlgItem(IDC_RADIO_HOUR)->EnableWindow(__b);
}

void CForMyDreamDlg::toTray()
{
    NOTIFYICONDATA nid;
    nid.cbSize = static_cast<DWORD>(sizeof(NOTIFYICONDATA));
    nid.hWnd = this->m_hWnd;
    nid.uID = IDR_MAINFRAME;
    nid.uFlags = NIF_ICON | NIF_MESSAGE | NIF_TIP;
    nid.uCallbackMessage = WM_SHOWTASK;//自定义的消息名称 
    nid.hIcon = LoadIcon(AfxGetInstanceHandle(), MAKEINTRESOURCE(IDR_MAINFRAME));
    wcscpy_s(nid.szTip, L"监控程序"); //信息提示条 
    Shell_NotifyIcon(NIM_ADD, &nid); //在托盘区添加图标 
    ::ShowWindow(this->GetSafeHwnd(), SW_HIDE); //隐藏主窗口
}

void CForMyDreamDlg::OnBnClickedRadioSec()
{
    m_iTimeBase = 1;
}

void CForMyDreamDlg::OnBnClickedRadioMin()
{
    m_iTimeBase = 60;
}

void CForMyDreamDlg::OnBnClickedRadioHour()
{
    m_iTimeBase = 3600;
}


afx_msg LRESULT CForMyDreamDlg::OnShowtask(WPARAM wParam, LPARAM lParam)
{
    if (wParam != IDR_MAINFRAME)
        return 1;
    switch (lParam)
    {
    case WM_LBUTTONDBLCLK: //双击左键的处理 
    {
        this->ShowWindow(SW_SHOW);//
        NOTIFYICONDATA nid;
        nid.cbSize = static_cast<DWORD>(sizeof(NOTIFYICONDATA));
        nid.hWnd = this->m_hWnd;
        nid.uID = IDR_MAINFRAME;
        nid.uFlags = NIF_ICON | NIF_MESSAGE | NIF_TIP;
        nid.uCallbackMessage = WM_SHOWTASK; //自定义的消息名称 
        nid.hIcon = LoadIcon(AfxGetInstanceHandle(), MAKEINTRESOURCE(IDR_MAINFRAME));
        wcscpy_s(nid.szTip, L"Just for my dream"); //信息提示条为“计划任务提醒” 
        Shell_NotifyIcon(NIM_DELETE, &nid); //在托盘区删除图标 
    } break;
    case WM_RBUTTONUP://右键起来时弹出快捷菜单 
    {
        LPPOINT lpoint = new tagPOINT;
        ::GetCursorPos(lpoint);                    // 得到鼠标位置
        CMenu menu;
        menu.CreatePopupMenu();                    // 声明一个弹出式菜单
        if(!m_bIsStart)
        {
            menu.AppendMenuW(MF_STRING | MF_ENABLED, 1001, _T("开始"));
            menu.AppendMenuW(MF_STRING | MF_DISABLED, 1001, _T("暂停"));
        }
        else
        {
            menu.AppendMenuW(MF_STRING | MF_DISABLED, 1001, _T("开始"));
            menu.AppendMenuW(MF_STRING | MF_ENABLED, 1001, _T("暂停"));
        }
        menu.AppendMenuW(MF_STRING | MF_ENABLED, WM_DESTROY, _T("关闭"));
        menu.TrackPopupMenu(TPM_LEFTALIGN, lpoint->x, lpoint->y, this);
        HMENU hmenu = menu.Detach();
        menu.DestroyMenu();
        delete lpoint;
    } break;
    default: break;
    }
    return 0;
}


void CForMyDreamDlg::OnClose()
{
    toTray();
}


afx_msg LRESULT CForMyDreamDlg::OnControlSplash(WPARAM wParam, LPARAM lParam)
{
    if (!m_bIsStart)
    {
        if (-1 == m_iTimeBase)
        {
            MessageBox(_T("请选择周期单位"), _T("Just for my dream!"), MB_OK | MB_ICONERROR);
            return 1;
        }
        int iInputNum = getTextNum();
        if (-1 == getTextNum())
        {
            MessageBox(_T("请输入周期"), _T("Just for my dream!"), MB_OK | MB_ICONERROR);
            return 1;
        }
        m_bIsStart = !m_bIsStart;
        m_bySleepTime = m_iTimeBase * 1000 * iInputNum;
        SetDlgItemText(IDOK, _T("暂停"));
        setTextRadioEnable(FALSE);
        AfxBeginThread(startShow, this);
        toTray();

    }
    else
    {
        m_bIsStart = !m_bIsStart;
        SetDlgItemText(IDOK, _T("开始"));
        setTextRadioEnable(TRUE);
    }
    return 0;
}


BOOL CForMyDreamDlg::OnCommand(WPARAM wParam, LPARAM lParam)
{
    if (wParam == 1001)
        PostMessageW(WM_CONTROLSPLASH);
    return CDialogEx::OnCommand(wParam, lParam);
}
