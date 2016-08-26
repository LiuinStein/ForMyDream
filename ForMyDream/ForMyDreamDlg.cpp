
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

UINT startShow(LPVOID pParam)
{
    while (1)
    {
        CSplashDlg csdShow;
        csdShow.DoModal();
        Sleep(static_cast<CForMyDreamDlg*>(pParam)->m_bySleepTime);
    }
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
    if (!m_bIsStart)
    {
        if (-1 == m_iTimeBase)
        {
            MessageBox(_T("请选择周期单位"), _T("Just for my dream!"), MB_OK | MB_ICONERROR);
            return;
        }
        int iInputNum = getTextNum();
        if (-1 == getTextNum())
        {
            MessageBox(_T("请输入周期"), _T("Just for my dream!"), MB_OK | MB_ICONERROR);
            return;
        }
        m_bySleepTime = m_iTimeBase * 1000 * iInputNum;
        SetDlgItemText(IDOK, _T("暂停"));
        setTextRadioEnable(FALSE);
        static auto wtpStartThread = AfxBeginThread(startShow, this);
    }
    else
    {
        SetDlgItemText(IDOK, _T("开始"));
        setTextRadioEnable(TRUE);
        
    }
    m_bIsStart = !m_bIsStart; 
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
